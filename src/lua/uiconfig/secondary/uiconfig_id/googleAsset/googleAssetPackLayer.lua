local t = 
{
	version = 1,
	components = 
	{
		
		{
			controlID = "Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
			UUID = "78bdedd7_5485_4a8c_8ecd_201f17520708",
			anchorPoint = "False",
			anchorPointX = "0",
			anchorPointY = "0",
			backGroundScale9Enable = "False",
			bgColorOpacity = "50",
			bIsOpenClipping = "False",
			classname = "MEPanel",
			colorType = "0;SingleColor:#FFE6E6E6;GraduallyChangingColorStart:#FFFFFFFF;GraduallyChangingColorEnd:#FFFFFFFF;vectorX:0;vectorY:0",
			DesignHeight = "640",
			DesignType = "0",
			DesignWidth = "960",
			dstBlendFunc = "771",
			height = "0",
			ignoreSize = "False",
			name = "Panel",
			PanelRelativeSizeModel = 
			{
				PanelRelativeEnable = true,
			},
			sizepercentx = "0",
			sizepercenty = "0",
			sizeType = "0",
			srcBlendFunc = "1",
			touchAble = "False",
			UILayoutViewModel = 
			{
				nType = 3,
			},
			uipanelviewmodel = 
			{
				Layout="Relative",
				nType = "3"
			},
			width = "0",
			ZOrder = "1",
			components = 
			{
				
				{
					controlID = "panel_root_Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
					UUID = "3cbe2d2e_08c2_4c9a_9c77_5913e6ba1cbb",
					anchorPoint = "False",
					anchorPointX = "0",
					anchorPointY = "0",
					backGroundScale9Enable = "False",
					bgColorOpacity = "50",
					bIsOpenClipping = "False",
					classname = "MEPanel",
					colorType = "1;SingleColor:#FFE6E6E6;GraduallyChangingColorStart:#FFFFFFFF;GraduallyChangingColorEnd:#FFFFFFFF;vectorX:0;vectorY:0",
					DesignHeight = "640",
					DesignType = "0",
					DesignWidth = "960",
					dstBlendFunc = "771",
					height = "640",
					ignoreSize = "False",
					name = "panel_root",
					sizepercentx = "0",
					sizepercenty = "0",
					sizeType = "0",
					srcBlendFunc = "1",
					touchAble = "False",
					UILayoutViewModel = 
					{
						relativeToName = "Panel",
						nType = 3,
						nGravity = 6,
						nAlign = 5
					},
					uipanelviewmodel = 
					{
						Layout="Absolute",
						nType = "0"
					},
					width = "1136",
					ZOrder = "1",
					components = 
					{
						
						{
							controlID = "img_bg_panel_root_Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
							UUID = "e4a3c562_f7e3_47b9_9c68_2ba587c5d0ad",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "False",
							classname = "MEImage",
							dstBlendFunc = "771",
							height = "640",
							ignoreSize = "False",
							name = "img_bg",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "770",
							texturePath = "ui/update/bg.png",
							touchAble = "False",
							UILayoutViewModel = 
							{
								PositionX = 568,
								PositionY = 320,
								IsPercent = true,
								PercentX = 50,
								PercentY = 50,
								LeftPositon = -32,
								TopPosition = 608,
								relativeToName = "Panel",
							},
							width = "1386",
							ZOrder = "1",
						},
						{
							controlID = "img_loadingBg_panel_root_Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
							UUID = "cde6066c_2c75_4c9d_80b8_6ae4e1c6a2ff",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0",
							backGroundScale9Enable = "True;capInsetsX:24;capInsetsY:0;capInsetsWidth:11;capInsetsHeight:0",
							classname = "MEImage",
							dstBlendFunc = "771",
							height = "92",
							ignoreSize = "False",
							name = "img_loadingBg",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							texturePath = "ui/battle/load/001.png",
							touchAble = "False",
							UILayoutViewModel = 
							{
								PositionX = 567,
							},
							width = "1386",
							ZOrder = "1",
						},
						{
							controlID = "ing_barBg_panel_root_Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
							UUID = "3768de1f_26a5_42d4_9981_0968d4a07f8e",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "True;capInsetsX:2;capInsetsY:0;capInsetsWidth:0;capInsetsHeight:0",
							classname = "MEImage",
							dstBlendFunc = "771",
							height = "8",
							ignoreSize = "False",
							name = "ing_barBg",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							texturePath = "ui/load_bg.png",
							touchAble = "False",
							UILayoutViewModel = 
							{
								PositionX = 568,
								PositionY = 4,
							},
							width = "1126",
							ZOrder = "3",
						},
						{
							controlID = "loadingBar_panel_root_Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
							UUID = "937a6158_d0ca_40f4_a603_3fd75c5bba8f",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "True;capInsetsX:0;capInsetsY:0;capInsetsWidth:0;capInsetsHeight:0",
							classname = "MELoadingBar",
							direction = "0",
							dstBlendFunc = "771",
							height = "8",
							ignoreSize = "False",
							name = "loadingBar",
							percent = "100",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							texture = "ui/load.png",
							touchAble = "False",
							UILayoutViewModel = 
							{
								PositionX = 568,
								PositionY = 4,
							},
							width = "1126",
							ZOrder = "3",
						},
						{
							controlID = "label_percent_panel_root_Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
							UUID = "619059ac_b6a8_4cf2_bcde_6d3719a9466b",
							anchorPoint = "False",
							anchorPointX = "1",
							anchorPointY = "0.5",
							classname = "MELabel",
							compPath = "luacomponents.common.MEIconLabel",
							dstBlendFunc = "771",
							FontColor = "#FFFFFFFF",
							fontName = "font/fangzheng_zhunyuan.ttf",
							fontShadow = 
							{
								IsShadow = false,
								ShadowColor = "#FFFFFFFF",
								ShadowAlpha = 255,
								OffsetX = 0,
								OffsetY = 0,
							},
							fontSize = "18",
							fontStroke = 
							{
								IsStroke = false,
								StrokeColor = "#FFE6E6E6",
								StrokeSize = 1,
							},
							height = "21",
							ignoreSize = "True",
							name = "label_percent",
							nTextAlign = "1",
							nTextHAlign = "1",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "770",
							text = "downloaded:  98%",
							touchAble = "False",
							touchScaleEnable = "False",
							UILayoutViewModel = 
							{
								PositionX = 1124,
								PositionY = 22,
							},
							width = "136",
							ZOrder = "3",
						},
						{
							controlID = "label_tip_panel_root_Panel-googleAssetPackLayer_Layer1_googleAsset_Game",
							UUID = "ceb42482_17d0_4c80_bd40_5408bc049145",
							anchorPoint = "False",
							anchorPointX = "0",
							anchorPointY = "0.5",
							classname = "MELabel",
							compPath = "luacomponents.common.MEIconLabel",
							dstBlendFunc = "771",
							FontColor = "#FFFFFFFF",
							fontName = "font/fangzheng_zhunyuan.ttf",
							fontShadow = 
							{
								IsShadow = false,
								ShadowColor = "#FFFFFFFF",
								ShadowAlpha = 255,
								OffsetX = 0,
								OffsetY = 0,
							},
							fontSize = "18",
							fontStroke = 
							{
								IsStroke = false,
								StrokeColor = "#FFE6E6E6",
								StrokeSize = 1,
							},
							height = "21",
							ignoreSize = "True",
							name = "label_tip",
							nTextAlign = "1",
							nTextHAlign = "1",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "770",
							text = "downloading",
							touchAble = "False",
							touchScaleEnable = "False",
							UILayoutViewModel = 
							{
								PositionX = 6,
								PositionY = 20,
							},
							width = "97",
							ZOrder = "3",
						},
					},
				},
			},
		},
	},
	actions = 
	{
		
	},
	respaths = 
	{
		textures = 
		{
			"ui/update/bg.png",
			"ui/battle/load/001.png",
			"ui/load_bg.png",
			"ui/load.png",
		},
		armatures = 
		{
			
		},
		movieclips = 
		{
			
		},
	},
}
return t

