local LogonHelper = class("LogonHelper")


local UserCenterHttpClient = TFClientNetHttp:GetInstance()

function LogonHelper:ctor(data)
    self.urlIdx = 0
    self.path = ""
    self.connectedArray = TFArray:new()

    self.account_ = nil
    self.password_ = nil
    self.code_ = nil
    self.isAuto_ = false
    self.isLogined = false;

    self.serverName_ = self:getCacheServerName()
    self.serverGroup_ = self:getCacheGroupName()

    if HeitaoSdk then
        HeitaoSdk.setLoginOutCallBack(function()
                self:HeitaoSdkLoginOutCallBack()
            end)

        HeitaoSdk.setLogincallback(function(code, msg)
                self:HeitaoSdkLoginCallback(code, msg)
            end)
    end
end

function LogonHelper:HeitaoSdkLoginCallback(code, msg)
    if not HeitaoSdk then return end
    --处理回调函数
    dump(msg)
    -- if msg == "登录失败" then
    if msg == TextDataMgr:getText(800107) then
    -- elseif msg == "登录成功" then
    elseif msg == TextDataMgr:getText(800108) then
        --self:loginVerification();
        dump("EventMgr:dispatchEvent(LoginLayer.LoginSuccess)")
        Utils:sendHttpLog("sdk_login")
        EventMgr:dispatchEvent("LoginLayer.LoginSuccess")
    end
end

function LogonHelper:HeitaoSdkLoginOutCallBack()
    CommonManager:closeConnection2()
end

function LogonHelper:restart()
end

function LogonHelper:restartGame(tips)
    local function callback()
        restartLuaEngine("")
    end
    showMessageBox(tips , EC_MessageBoxType.okAndCancel,callback,callback)
end

local TFClientUpdate =  TFClientResourceUpdate:GetClientResourceUpdate()
function LogonHelper:loginTest(account,password,code,isAuto)
    if not self.serverGroup_ then
        Utils:showTips(800090)
        return
    end

    showLongLoading()

    self.account_ = account
    self.password_ = password
    self.code_ = code
    self.isAuto_ = isAuto
    self.path = ""

    self.loginCallback = function (type,ret,data)
        data = json.decode(data);
        dump(data);
        if not data then
            self.isLogined = false;
            self:LoginUcCenterFailHandler(self.localLoginUrl)
            -- toastMessageLink("连接登录服务器失败")
            --toastMessageLink(TextDataMgr:getText(800114))
            return
        end

        --游戏资源需要更新
        if data.status and data.status == 100017 then
            hideAllLoading();
            self:restartGame(data.msg);
            return;
        end

        --多账号封停
        if data.status and data.status == 100037 then
            hideAllLoading();
            EventMgr:dispatchEvent("LoginLayer.AcountBan")
            return
        end

        if data.status ~= 0 then
            hideAllLoading();
            self.isLogined = false;
            local text = TextDataMgr:getText(data.status);
            if data.status == 100036 then
                if (data.msg) then
                    text = data.msg
                end
            end
            Utils:showTips(text)
            SaveManager:saveIsActivat(false);
        else
            if not data.data then
                self:LoginUcCenterFailHandler(self.localLoginUrl)
                return
            end

            -- if data.data.openServerDate then
            --     local date = os.date("*t",data.data.openServerDate / 1000)
            --     toastMessageLink(string.format("本次测试服务器将于%d月%d日%d时开放，感谢您的关注！",date.month,date.day,date.hour));
            --     return
            -- end
            hideAllLoading();
            ServerDataMgr:setGameServerList(data.data)

            if GameConfig.Debug then
                self:cacheLoginInfo()
            end

            self.isLogined = true;
            SaveManager:saveIsActivat(true);

            if table.count(data.data) == 1 then
                ServerDataMgr:setCurrentServerIndex(1)
                SaveManager:saveUserInfoDemo(account,password,data.data[1].token,data.data[1].gameServerIp,data.data[1].gameServerPort);
            else
                local selectIdx = ServerDataMgr:getCurrentServerIndex();
                SaveManager:saveUserInfoDemo(account,password,data.data[selectIdx].token,data.data[selectIdx].gameServerIp,data.data[selectIdx].gameServerPort);
            end

            EventMgr:dispatchEvent(EV_LOGIN_UPDATESERVERNAME)

            Utils:sendHttpLog("UTC_connected")

            if isAuto then
                return;
            end

            --TFDirector:dispatchGlobalEventWith("LoginLayer.LoginSuccess", {})
            EventMgr:dispatchEvent("LoginLayer.LoginSuccess")
        end
    end

    local osname = "WINDOWS"
    local token = "NULL"
    if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
        osname = "IOS"
        token = TFDeviceInfo:getDeviceToken();
   elseif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID then
        osname = "ANDROID"
    end

    local path = ""
    path = path.."?accountId="..string.url_encode(account);
    path = path.."&password="..password;
    path = path.."&token="..token;
    path = path.."&deviceid="..((TFDeviceInfo:getMachineOnlyID()) or 1);
    path = path.."&deviceName="..((TFDeviceInfo:getSystemName()) or 1);
    path = path.."&osVersion="..((TFDeviceInfo:getSystemVersion()) or 1);
    path = path.."&osName="..osname;
    path = path.."&version="..TFClientUpdate:getCurVersion();
    path = path.."&sdkVersion=".."";
    path = path.."&sdk=".."";

    if FileCheckMgr then
        path = path.."&mimi="..FileCheckMgr:getIsSuccess();
    end

    if self.serverName_ then
        path = path.."&serverName="..self.serverName_;
    end

    if self.serverGroup_ then
        path = path.."&serverGroup=" .. self.serverGroup_;
    end

    path = path.."&channelAppId="..1;
    path = path.."&channelId=".."LOCAL_TEST";
    if code and code ~= "" then
        path = path.."&activateKey="..code;
    end
    local _, migrationServerId = TFGlobalUtils:getMigrationServerId(true)
    path = path.."&addressIndex="..migrationServerId;

    self.path = string.gsub(path," ","");
    --print(path);
    self.path = path

    local localLoginUrl = nil
    local serverGroupConfig = ServerDataMgr:getServerList(self.serverGroup_)
    if serverGroupConfig and serverGroupConfig.url then
        localLoginUrl = serverGroupConfig.url
    end
    self.localLoginUrl = localLoginUrl
    self:tryLoginUcCenter(localLoginUrl)

    --UserCenterHttpClient:addMERecvListener(self.loginCallback)
    --UserCenterHttpClient:httpRequest(TFHTTP_TYPE_GET,url)
end

function LogonHelper:loginVerification()
    if not HeitaoSdk then return end
    showLongLoading()

    self.account_ = account
    self.password_ = password
    self.code_ = code
    self.isAuto_ = isAuto
    self.path = ""

    self.loginCallback = function (type,ret,data)
        data = json.decode(data);
        if not data then
            self.isLogined = false;
            self:setVerification(false)
            self:LoginUcCenterFailHandler()
            -- toastMessageLink("连接登录服务器失败")
            -----toastMessageLink(TextDataMgr:getText(800114))
            return
        end
        dump(data);

        --游戏资源需要更新
        if data.status and data.status == 100017 then
            hideAllLoading();
            self:restartGame(data.msg);
            self.connectedArray:clear()
            return;
        end     

        --多账号封停
        if data.status and data.status == 100037 then
            hideAllLoading();
            EventMgr:dispatchEvent("LoginLayer.AcountBan")
            return
        end   

        if data.status ~= 0 then
            hideAllLoading();
            self:setVerification(false)
            local text = TextDataMgr:getText(data.status);
            if data.status == 100036 then
                text = text.."  "..data.msg
            end
            Utils:showTips(text)
            self.connectedArray:clear()
        else
            if not data.data then
                self:LoginUcCenterFailHandler()
                return
            end

            hideAllLoading();
            self.connectedArray:clear()

            if data.data.openServerDate then
                local date = os.date("*t",data.data.openServerDate / 1000)
                -- toastMessageLink(string.format("本次测试服务器将于%d月%d日%d时开放，感谢您的关注！",date.month,date.day,date.hour));
                toastMessageLink(string.format(TextDataMgr:getText(800115),date.month,date.day,date.hour));
                return
            end

            if GameConfig.Debug then
                self:cacheLoginInfo()
            end

            if data.data and data.data.needActivate and data.data.needActivate == "1" then
                self:setVerification(true)
                SaveManager:saveIsActivat(false);
                return
            end

            self:setVerification(true)
            SaveManager:saveIsActivat(true);

            ServerDataMgr:setGameServerList(data.data)
            
            if table.count(data.data) == 1 then
                ServerDataMgr:setCurrentServerIndex(1)
                SaveManager:saveUserInfoDemo(account,password,data.data[1].token,data.data[1].gameServerIp,data.data[1].gameServerPort);
            else
                local selectIdx = ServerDataMgr:getCurrentServerIndex();
                SaveManager:saveUserInfoDemo(account,password,data.data[selectIdx].token,data.data[selectIdx].gameServerIp,data.data[selectIdx].gameServerPort);
            end

            EventMgr:dispatchEvent(EV_LOGIN_UPDATESERVERNAME)

            Utils:sendHttpLog("UTC_connected")
        end  
    end

    local osname = "WINDOWS"
    local token = HeitaoSdk.gettoken();
    dump(token)
    if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
        osname = "IOS"
        --token = TFDeviceInfo:getDeviceToken();
    elseif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID then
        osname = "ANDROID"
    end

    local imei = "000000000000000"
    if HeitaoSdk then
        local custom = HeitaoSdk.getcustom()
        if custom ~= "" then
            local jsonData = json.decode(custom)
            if jsonData ~= nil and jsonData.imei ~= nil and jsonData.imei ~= "" then
                imei = jsonData.imei
            end
        end
    end

    local size = CCDirector:sharedDirector():getOpenGLView():getFrameSize();

    local path = ""
    path = path.."?token="..string.url_encode(token);
    path = path.."&accountId="..string.url_encode(HeitaoSdk.getuserid());
    path = path.."&deviceid="..string.url_encode(((TFDeviceInfo:getMachineOnlyID()) or 1));
    path = path.."&osVersion="..string.url_encode(((TFDeviceInfo:getSystemVersion()) or 1));
    path = path.."&osName="..string.url_encode(osname);
    path = path.."&networkType="..string.url_encode((TFDeviceInfo:getNetWorkType()));
    path = path.."&networkCarrier="..string.url_encode((TFDeviceInfo:getCarrierOperator()));
    path = path.."&screenWidth="..string.url_encode((size.width));
    path = path.."&screenHeight="..string.url_encode((size.height));
    path = path.."&appVersion="..string.url_encode((TFDeviceInfo:getCurAppVersion()));
    path = path.."&version="..string.url_encode(TFClientUpdate:getCurVersion());
    path = path.."&sdkVersion=".."";
    path = path.."&sdk=".."";
    path = path.."&channelAppId="..string.url_encode(HeitaoSdk.getplatformId() % 10000);
    local myVersion = md5.sumhexa("@#156qazxswedc7*$%#@!*&2dduebvgrelas"..token..TFDeviceInfo:getMachineOnlyID()..TFClientUpdate:GetUpdateDefaultVersion())
    path = path.."&myVersion="..string.url_encode(myVersion);

    if FileCheckMgr then
        path = path.."&mimi="..FileCheckMgr:getIsSuccess();
    end    
    
    if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
        path = path.."&deviceName="..string.url_encode(((TFDeviceInfo:getDeviceModel()) or 1));
        path = path.."&devicebrand="..string.url_encode("Apple");
        path = path.."&idfa="..string.url_encode(((TFDeviceInfo:getMachineOnlyID()) or 1));
        path = path.."&idfv="..string.url_encode(((TFDeviceInfo:getIDFV()) or 1));
    elseif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID then
        path = path.."&deviceName="..string.url_encode(((TFDeviceInfo:getSystemName()) or 1));
        path = path.."&devicebrand="..string.url_encode(TFDeviceInfo:getMachineName());
        path = path.."&imei="..string.url_encode(imei);
        path = path.."&androidid="..string.url_encode(((TFDeviceInfo:getAndroidId()) or 1));
    end
    if RELEASE_TEST then
        path = path.."&serverGroup=".."cehua";
        path = path.."&channelId=".."HEI_TAO";
    else
        path = path.."&serverGroup=".."ios_check";
        path = path.."&channelId=".."HEI_TAO";
    end
    
    if code and code ~= "" then
        path = path.."&activateKey="..code;
    end
    local _, migrationServerId = TFGlobalUtils:getMigrationServerId(true)
    path = path.."&addressIndex="..migrationServerId;

    path = string.gsub(path," ","");
    --print(path);
    self.path = path
    self:tryLoginUcCenter()
end

function LogonHelper:activat(code)
    showLongLoading()
    local function activateCallback(type,ret,data)
        hideAllLoading();
        data = json.decode(data);
        if not data then
            -- toastMessageLink("验证失败")
            toastMessageLink(TextDataMgr:getText(800116))
            return
        end
        dump(data)
        if data.status ~= 0 then
            SaveManager:saveIsActivat(false);
            Utils:showTips(data.status)
        else
            if not data.data then
                return
            end
            SaveManager:saveIsActivat(true);
            AlertManager:close();
            SaveManager:saveUserInfoDemo(account,password,data.data.token,data.data.gameServerIp,data.data.gameServerPort);
            TFDirector:dispatchGlobalEventWith("LoginLayer.LoginSuccess", {})
        end
    end
    local url = ACTIVATE_URL
    url = url.."?accountId="..HeitaoSdk.getuserid();
    url = url.."&channelAppId="..1;
    url = url.."&channelId=".."HEI_TAO";
    url = url.."&activateKey="..code;

    url = string.gsub(url," ","");
    --print(url);
    UserCenterHttpClient:addMERecvListener(activateCallback)
    UserCenterHttpClient:httpRequest(TFHTTP_TYPE_GET,url)
end

function LogonHelper:getIsLogin()
    return self.isLogined;
end

function LogonHelper:setIsLogin(islogin)
    self.isLogined = islogin;
    if not islogin then
        self._isVerification = false;
    end
end

function LogonHelper:isVerification()
    return self._isVerification;
end

function LogonHelper:setVerification(Verification)
    self._isVerification = Verification;
end

function LogonHelper:switchLogin(groupName, serverName)
    self.serverGroup_ = groupName
    self.serverName_ = serverName
    self:setIsLogin(false);
    -- if self.account_ and self.password_ then
    --     self:loginTest(self.account_, self.password_, self.code_, self.isAuto_)
    -- end
end

local KEY_CACHE_GROUP_NAME = "key_cache_group_name_newkey_global"
local KEY_CACHE_SERVER_NAME = "key_cache_server_name_newkey_global"

function LogonHelper:getCacheServerName()
    local serverName = CCUserDefault:sharedUserDefault():getStringForKey(KEY_CACHE_SERVER_NAME)
    if #serverName > 0 then
        return serverName
    end
end

function LogonHelper:getCacheGroupName()
    local groupName = CCUserDefault:sharedUserDefault():getStringForKey(KEY_CACHE_GROUP_NAME)
    if #groupName > 0 then
        return groupName
    end
end

function LogonHelper:cacheLoginInfo()
    if self.serverGroup_ then
        CCUserDefault:sharedUserDefault():setStringForKey(KEY_CACHE_GROUP_NAME, self.serverGroup_)
    end
    if self.serverName_ then
        CCUserDefault:sharedUserDefault():setStringForKey(KEY_CACHE_SERVER_NAME, self.serverName_)
    else
        CCUserDefault:sharedUserDefault():setStringForKey(KEY_CACHE_SERVER_NAME, "")
    end
end

function LogonHelper:getServerName()
    return self.serverName_
end

function LogonHelper:getGroupName()
    return self.serverGroup_
end

function LogonHelper:LoginUcCenterFailHandler( localUrl )
    local urlList = URL_LOGIN
    if localUrl then
        urlList = localUrl
    end

    if self.connectedArray:length() >= 2*#urlList then
        hideAllLoading()
        toastMessageLink(TextDataMgr:getText(800114))
        return
    end
    TimeOut(function()
        self:tryLoginUcCenter()
    end, 2)
end

function LogonHelper:tryLoginUcCenter( localUrl )
    local urlList = URL_LOGIN
    if localUrl then
        urlList = localUrl
    end

    self.urlIdx = self.urlIdx + 1
    if self.urlIdx > #urlList then
        self.urlIdx = 1
    end

    self.connectedArray:push(urlList[self.urlIdx])
    UserCenterHttpClient:addMERecvListener(self.loginCallback)
    UserCenterHttpClient:httpRequest(TFHTTP_TYPE_GET, urlList[self.urlIdx] ..self.path)
    print(urlList[self.urlIdx] ..self.path)

    Utils:sendHttpLog("UTC_connect")

    -- local time = 0
    -- for url in self.connectedArray:iterator() do
    --     if url == urlList[self.urlIdx] then
    --         time = time + 1
    --     end
    -- end

    -- if HeitaoSdk and time <= 1 then
    --     local url = require("TFFramework.net.TFUrl")
    --     if url then
    --         local parsed_url = url.parse(urlList[self.urlIdx])
    --         HeitaoSdk.reportNetworkData(parsed_url.host)
    --     end
    -- end
end

return LogonHelper:new()
--[[强制更新66234]]