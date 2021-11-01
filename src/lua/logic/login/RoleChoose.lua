
local RoleChoose = class("RoleChoose", BaseLayer)

function RoleChoose:initData()
    self.server_ = ServerDataMgr:getGameServerList()
end

function RoleChoose:ctor(...)
    self.super.ctor(self)
    self:initData(...)
    self:init("lua.uiconfig.loginScene.roleChoose")
end

function RoleChoose:initUI(ui)
    self.super.initUI(self, ui)
    self.Panel_root = TFDirector:getChildByPath(ui, "Panel_root")
    self.Panel_prefab = TFDirector:getChildByPath(ui, "Panel_prefab"):hide()
    local ScrollView_groupList = TFDirector:getChildByPath(self.Panel_root, "ScrollView_groupList")
    self.ListView_groupList = UIListView:create(ScrollView_groupList)
    self.ListView_groupList:setItemsMargin(6)
    self.Button_serverListItem = TFDirector:getChildByPath(self.Panel_prefab, "Button_serverListItem")

    self:refreshView()
end

function RoleChoose:refreshView()
    self:showServerGroup()
end

function RoleChoose:showServerGroup()
    for _serverIndex, serverData in pairs(self.server_) do
        local item = self.Button_serverListItem:clone()
        self.ListView_groupList:pushBackCustomItem(item)
        local Label_name = TFDirector:getChildByPath(item, "Label_name")
        local playerName = SaveManager:getPlayerName(serverData.token)
        if playerName == nil or playerName == "" then
            Label_name:setTextById(190001094, _serverIndex)
        else
            Label_name:setTextById(190001094, playerName)
        end
        
        item:onClick(function()
            local function callback()
                ServerDataMgr:setCurrentServerIndex(_serverIndex)
                self:getParent():removeLayer(self,true)
                EventMgr:dispatchEvent(EV_LOGIN_UPDATESERVERNAME, serverData.group_id, serverData.serverId)
            end
            callback()
        end)
    end
end

function RoleChoose:registerEvents()
    self.Panel_root:onClick(function()
        self:getParent():removeLayer(self,true)
    end)
end

return RoleChoose
