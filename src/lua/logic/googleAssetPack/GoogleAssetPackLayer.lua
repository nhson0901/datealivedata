local GoogleAssetPackLayer = class("GoogleAssetPackLayer", BaseLayer)

function GoogleAssetPackLayer:ctor( )
    self:initData()
    self.super.ctor(self)
    self.strCfg = TFGlobalUtils:requireGlobalFile("lua.table.StartString")
    self:init("lua.uiconfig.googleAsset.googleAssetPackLayer")
end

function GoogleAssetPackLayer:initData( ... )
    self.statusCode = EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.DEFAULT
    self.assetPacks = {{packName = "InstallPack"}, {packName = "FastFollowOnePack"}, {packName = "FastFollowTwoPack"}}
    self.readyAssetPacks = {}
end

function GoogleAssetPackLayer:initUI(ui)
    self.super.initUI(self, ui)

    self.tipLabel = TFDirector:getChildByPath(ui, "label_tip")
    self.tipLabel:setText(self.strCfg[190000138].text)

    self.percentLabel = TFDirector:getChildByPath(ui, "label_percent"):hide()

    self.loadingBar = TFDirector:getChildByPath(ui, 'loadingBar')
    self.loadingBar:setPercent(0)

    self.bgImg = TFDirector:getChildByPath(ui,"img_bg")
    local path,desc = Utils:randomAD(3)
    self.bgImg:setTexture(path)

    local pDirector = CCDirector:sharedDirector()
    local frameSize = pDirector:getOpenGLView():getFrameSize()
    local baseSize = CCSize(1136 , 640)
    local realSize = CCSize(math.ceil(frameSize.width * baseSize.height / frameSize.height) , baseSize.height)
    local size = self.bgImg:getSize();
    if realSize.width > 1386 and size.width == 1386 and size.height == 640 then
        self.bgImg:setSize(realSize)
    elseif realSize.width > 1386 and size.width == 1386 then
        self.bgImg:setSize(CCSizeMake(realSize.width, size.height))
    end

    self:determineWaitStatus()
end

function GoogleAssetPackLayer:registerEvents()
    self:addMEListener(TFWIDGET_ENTERFRAME, self.update)
end

function GoogleAssetPackLayer:update( )
    -- body
    TFClientGameAssetManager:updateGameAssetManager()

    if self.statusCode == EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.DEFAULT then
        self:displayMainUI()
    elseif self.statusCode == EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_NOT_READY then
        self:displayWaitUI()
    elseif self.statusCode == EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_ERROR then
        self:displayErrorUI()
    elseif self.statusCode == EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_READY then
        self:displayReadyUI()
    end
end

function GoogleAssetPackLayer:displayReadyUI( )
    self.statusCode = EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_OTHER
    AlertManager:changeScene(SceneType.PACKBRANCH)
end

function GoogleAssetPackLayer:displayMainUI(  )
    for i,_info in ipairs(self.assetPacks) do
        self:displayAssetPackUI(_info.packName)
    end
end

function GoogleAssetPackLayer:displayWaitUI( )
    for i,_info in ipairs(self.assetPacks) do
        self:displayAssetPackUI(_info.packName)
    end

    self:determineWaitStatus()
    for i,_info in ipairs(self.assetPacks) do
        local assetStatus = TFClientGameAssetManager:getGameAssetPackStatus(_info.packName)
        if (assetStatus == TFClientGameAssetManager.GAMEASSET_NEEDS_MOBILE_AUTH) then
            TFClientGameAssetManager:requestMobileDataDownloads()
        end
    end
end

function GoogleAssetPackLayer:displayErrorUI( )
    local assetErrorString = TFClientGameAssetManager:getGameAssetErrorMessage()
    self.tipLabel:setText(assetErrorString)
    self.percentLabel:hide()
end

function GoogleAssetPackLayer:displayAssetPackUI( assetPackName )
    local assetStatus = TFClientGameAssetManager:getGameAssetPackStatus(assetPackName)
    if(assetStatus == TFClientGameAssetManager.GAMEASSET_NOT_FOUND) then
    elseif(assetStatus == TFClientGameAssetManager.GAMEASSET_WAITING_FOR_STATUS) then 
    elseif(assetStatus == TFClientGameAssetManager.GAMEASSET_NEEDS_DOWNLOAD) then 
        self:displayAssetPackNeedsDownloadStatus(assetPackName)
    elseif(assetStatus == TFClientGameAssetManager.GAMEASSET_NEEDS_MOBILE_AUTH) then 
        self:displayAssetPackNeedsMobileAuthStatus(assetPackName)
    elseif(assetStatus == TFClientGameAssetManager.GAMEASSET_DOWNLOADING) then 
        self:displayAssetPackDownloadStatus(assetPackName)
    elseif(assetStatus == TFClientGameAssetManager.GAMEASSET_READY) then 
        self:displayAssetPackReadyStatus(assetPackName)
    elseif(assetStatus == TFClientGameAssetManager.GAMEASSET_PENDING_ACTION) then 
    elseif(assetStatus == TFClientGameAssetManager.GAMEASSET_ERROR) then 
        self.statusCode = EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_ERROR
    end
end

function GoogleAssetPackLayer:displayAssetPackNeedsDownloadStatus( assetPackName )
    print("GoogleAssetPackLayer:displayAssetPackNeedsDownloadStatus")
    local assetPackSizeMB = TFClientGameAssetManager:getDownloadTotalPackDownloadSize(assetPackName)
    print("GoogleAssetPackLayer:displayAssetPackNeedsDownloadStatus   assetPackSizeMB  " ..assetPackSizeMB)
    TFClientGameAssetManager:requestDownload(assetPackName)
end

function GoogleAssetPackLayer:displayAssetPackNeedsMobileAuthStatus( assetPackName )
    print("GoogleAssetPackLayer:displayAssetPackNeedsMobileAuthStatus")
    local assetPackSizeMB = TFClientGameAssetManager:getDownloadTotalPackDownloadSize(assetPackName)
    TFClientGameAssetManager:requestMobileDataDownloads()
end

function GoogleAssetPackLayer:displayAssetPackDownloadStatus( assetPackName )
    local completionPercent = TFClientGameAssetManager:getDownloadCompletionProgress(assetPackName)
    local displayPercent = 0
    if completionPercent > 0 then
        displayPercent = completionPercent * 100
    end

    local assetPackType = TFClientGameAssetManager:getGameAssetPackType(assetPackName)
    if (assetPackType == TFClientGameAssetManager.GAMEASSET_PACKTYPE_ONDEMAND) then
        TFClientGameAssetManager:requestDownloadCancellation(assetPackName)
    end

    if displayPercent > 0 then
        self.loadingBar:setPercent(displayPercent)
        self.loadingBar:show()
        self.tipLabel:setText(assetPackName .."  " ..self.strCfg[800095].text)
        self.tipLabel:show()
        self.percentLabel:setText(string.format(self.strCfg[800093].text, displayPercent))
        self.percentLabel:show()
    end
end

function GoogleAssetPackLayer:displayAssetPackReadyStatus( assetPackName )
    local foundPack = false
    for _,_info in ipairs(self.readyAssetPacks) do
        if _info.packName == assetPackName then
            foundPack = true
            break
        end
    end

    if not foundPack then
        table.insert(self.readyAssetPacks, {packName = assetPackName})
    end

    if #self.readyAssetPacks >= #self.assetPacks then
        self.statusCode = EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_READY
    end
end

function GoogleAssetPackLayer:removeEvents()
    
end

function GoogleAssetPackLayer:onShow()
    self.super.onShow(self)
end

function GoogleAssetPackLayer:determineWaitStatus( )
    for i,_info in ipairs(self.assetPacks) do
        local assetPackStatus = TFClientGameAssetManager:getGameAssetPackStatus(_info.packName)
        if assetPackStatus == TFClientGameAssetManager.GAMEASSET_ERROR then
            self.statusCode = EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_ERROR
            break
        elseif (assetPackStatus ~= TFClientGameAssetManager.GAMEASSET_READY) then
            self.statusCode = EC_GOOGLE_ASSET_LAYER_LOGIC_STATUS.GAMEASSET_NOT_READY
            break
        end
    end
end



return GoogleAssetPackLayer