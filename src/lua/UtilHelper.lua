-- 测试版本 true为调试版本  false为发布版本
VERSION_DEBUG = false
if CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 then
    VERSION_DEBUG = true
end

--是否打开日志
DEBUG_LOG = false
if (CC_TARGET_PLATFORM == CC_PLATFORM_WIN32) or DEBUG_PACKAGE then
    DEBUG_LOG = true
end

EXPERIENCE 	= false--体验服标识
GM_MODE 	= false;--GM模式

--cdn address
URL_CDN_VERSION = {}
URL_CDN_FILE = {}
if DEBUG_PACKAGE then
    if VERSION_DEBUG == true then
        URL_CDN_VERSION[1] = "http://c-ml.datealive.com/dal_global/test/"
        URL_CDN_FILE[1]    = "http://c-ml.datealive.com/dal_global/test/"
        URL_CDN_VERSION[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/test/"
        URL_CDN_FILE[2]    = "http://c-dal-ml.heitaoglobal.com/dal_global/test/"
    elseif CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
        URL_CDN_VERSION[1] = "https://c-ml.datealive.com/dal_global/test/"
        URL_CDN_FILE[1]    = "https://c-ml.datealive.com/dal_global/test/"
        URL_CDN_VERSION[2] = "https://c-dal-ml.heitaoglobal.com/dal_global/test/"
        URL_CDN_FILE[2]    = "https://c-dal-ml.heitaoglobal.com/dal_global/test/"
    elseif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID then
        URL_CDN_VERSION[1] = "http://c-ml.datealive.com/dal_global/test/"
        URL_CDN_FILE[1]    = "http://c-ml.datealive.com/dal_global/test/"
        URL_CDN_VERSION[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/test/"
        URL_CDN_FILE[2]    = "http://c-dal-ml.heitaoglobal.com/dal_global/test/"
    end
else
    if VERSION_DEBUG == true then
        URL_CDN_VERSION[1] = "http://c-ml.datealive.com/dal_global/test/"
        URL_CDN_FILE[1]    = "http://c-ml.datealive.com/dal_global/test/"
        URL_CDN_VERSION[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/test/"
        URL_CDN_FILE[2]    = "http://c-dal-ml.heitaoglobal.com/dal_global/test/"
    elseif CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
        URL_CDN_VERSION[1] = "https://c-ml.datealive.com/dal_global/release_ios/"
        URL_CDN_FILE[1]    = "https://c-ml.datealive.com/dal_global/release_ios/"
        URL_CDN_VERSION[2] = "https://c-dal-ml.heitaoglobal.com/dal_global/release_ios/"
        URL_CDN_FILE[2]    = "https://c-dal-ml.heitaoglobal.com/dal_global/release_ios/"
    elseif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID then
        URL_CDN_VERSION[1] = "http://c-ml.datealive.com/dal_global/release_android/"
        URL_CDN_FILE[1]    = "http://c-ml.datealive.com/dal_global/release_android/"
        URL_CDN_VERSION[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/release_android/"
        URL_CDN_FILE[2]    = "http://c-dal-ml.heitaoglobal.com/dal_global/release_android/"
    end
end

--login address
URL_LOGIN = {}
if DEBUG_PACKAGE then
    if  CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 or VERSION_DEBUG == true then
        URL_LOGIN[1] = "http://148.153.55.228:7070/account/login"
    else
        if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
            URL_LOGIN[1] = "https://148.153.55.228:7070/account/login"
            URL_LOGIN[2] = "https://148.153.55.228:7070/account/login"
        else
            URL_LOGIN[1] = "http://148.153.55.228:7070/account/login"
            URL_LOGIN[2] = "http://148.153.55.228:7070/account/login"
        end
    end
else
    if  CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 or VERSION_DEBUG == true then
        URL_LOGIN[1] = "http://192.168.20.125:8980/account/login"
    else
        if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
            URL_LOGIN[1] = "https://uc-en.datealive.com:8082/account/login"
            URL_LOGIN[2] = "https://uc-en2.datealive.com:8082/account/login"
        else
            URL_LOGIN[1] = "http://uc-en.datealive.com:8081/account/login"
            URL_LOGIN[2] = "http://uc-en2.datealive.com:8081/account/login"
        end
    end
end

--query server date address
if DEBUG_PACKAGE then
    if  CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 or VERSION_DEBUG == true then
        URL_LOGIN_QUERYDATE = "http://148.153.55.228:7070/account/querydate"
    else 
        if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
            URL_LOGIN_QUERYDATE = "https://148.153.55.228:7070/account/querydate"
        else
            URL_LOGIN_QUERYDATE = "http://148.153.55.228:7070/account/querydate"
        end
    end
else
    if  CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 or VERSION_DEBUG == true then
        URL_LOGIN_QUERYDATE = "http://192.168.20.125:8980/account/querydate"
    else 
        if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
            URL_LOGIN_QUERYDATE = "https://uc-en.datealive.com:8082/account/querydate"
        else
            URL_LOGIN_QUERYDATE = "http://uc-en.datealive.com:8081/account/querydate"
        end
    end
end

--ext assets address
URL_REMOTE = {}
if CC_TARGET_PLATFORM == CC_PLATFORM_IOS then
	URL_REMOTE[1] = "https://c-ml.datealive.com/dal_global/ext_assets/release_ios/"
	URL_REMOTE[2] = "https://c-dal-ml.heitaoglobal.com/dal_global/ext_assets/release_ios/"
	if VERSION_DEBUG == true then
		URL_REMOTE[1] = "http://c-ml.datealive.com/dal_global/ext_assets/debug_ios/"
		URL_REMOTE[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/ext_assets/debug_ios/"
	end
elseif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID then
	URL_REMOTE[1] = "http://c-ml.datealive.com/dal_global/ext_assets/release_android/"
	URL_REMOTE[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/ext_assets/release_android/"
	if VERSION_DEBUG == true then
		URL_REMOTE[1] = "http://c-ml.datealive.com/dal_global/ext_assets/debug_android/"
		URL_REMOTE[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/ext_assets/debug_android/"
	end
else
	URL_REMOTE[1] = "http://c-ml.datealive.com/dal_global/ext_assets/test/"
	URL_REMOTE[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/ext_assets/test/"
end

--notice board address
URL_NOTICEBOARD = "http://api-en.datealive.com/yhdzz/special/1"

--announcement address
URL_ANNOUNCEMENT = {}
if RELEASE_TEST or CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 then
    URL_ANNOUNCEMENT[1] = "https://c-ml.datealive.com/dal_global/notice_test/announcement"..TFLanguageMgr:getUsingLanguageCode("_")..".json"
    URL_ANNOUNCEMENT[2] = "https://c-dal-ml.heitaoglobal.com/dal_global/notice_test/announcement"..TFLanguageMgr:getUsingLanguageCode("_")..".json"
elseif CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID then
    URL_ANNOUNCEMENT[1] = "http://c-ml.datealive.com/dal_global/notice/announcement"..TFLanguageMgr:getUsingLanguageCode("_")..".json"
    URL_ANNOUNCEMENT[2] = "http://c-dal-ml.heitaoglobal.com/dal_global/notice/announcement"..TFLanguageMgr:getUsingLanguageCode("_")..".json"
else
    URL_ANNOUNCEMENT[1] = "https://c-ml.datealive.com/dal_global/notice/announcement"..TFLanguageMgr:getUsingLanguageCode("_")..".json"
    URL_ANNOUNCEMENT[2] = "https://c-dal-ml.heitaoglobal.com/dal_global/notice/announcement"..TFLanguageMgr:getUsingLanguageCode("_")..".json"
end
