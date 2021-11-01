local t = 
{
	version = 1,
	components = 
	{
		
		{
			controlID = "Panel-roleChoose_Layer1_loginScene_Game",
			UUID = "ff769607_136c_48b4_833f_b7a69accb67b",
			anchorPoint = "False",
			anchorPointX = "0",
			anchorPointY = "0",
			backGroundScale9Enable = "False",
			bgColorOpacity = "255",
			bIsOpenClipping = "False",
			classname = "MEPanel",
			colorType = "0;SingleColor:#FFE6E6E6;GraduallyChangingColorStart:#FFFFFFFF;GraduallyChangingColorEnd:#FFFFFFFF;vectorX:0;vectorY:0",
			DesignHeight = "640",
			DesignType = "0",
			DesignWidth = "960",
			dstBlendFunc = "771",
			height = "640",
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
			width = "1136",
			ZOrder = "1",
			components = 
			{
				
				{
					controlID = "Panel_root_Panel-roleChoose_Layer1_loginScene_Game",
					UUID = "4010b242_3875_4146_be0c_003206dceab3",
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
					height = "640",
					ignoreSize = "False",
					name = "Panel_root",
					sizepercentx = "100",
					sizepercenty = "100",
					sizeType = "0",
					srcBlendFunc = "1",
					touchAble = "True",
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
							controlID = "Image_serverListView_bg_Panel_root_Panel-roleChoose_Layer1_loginScene_Game",
							UUID = "9364083b_4f0c_44ae_afa0_94c3a545352f",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "True;capInsetsX:0;capInsetsY:0;capInsetsWidth:0;capInsetsHeight:0",
							classname = "MEImage",
							dstBlendFunc = "771",
							height = "155",
							ignoreSize = "False",
							name = "Image_serverListView_bg",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							texturePath = "ui/login/88.png",
							touchAble = "False",
							UILayoutViewModel = 
							{
								PositionX = 141,
								PositionY = 139,
								LeftPositon = 5,
								TopPosition = 430,
								relativeToName = "Panel",
							},
							width = "258",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "ScrollView_groupList_Image_serverListView_bg_Panel_root_Panel-roleChoose_Layer1_loginScene_Game",
									UUID = "3fa0f601_d8bc_42d5_a327_ada1345e541c",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									backGroundScale9Enable = "False",
									bgColorOpacity = "50",
									bIsOpenClipping = "True",
									bounceEnable = "True",
									classname = "MEScrollView",
									colorType = "0;SingleColor:#FFFF0000;GraduallyChangingColorStart:#FFFFFFFF;GraduallyChangingColorEnd:#FFFFFFFF;vectorX:0;vectorY:0",
									direction = "1",
									dstBlendFunc = "771",
									height = "155",
									ignoreSize = "False",
									innerHeight = "155",
									innerWidth = "258",
									name = "ScrollView_groupList",
									showScrollbar = "False",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "1",
									touchAble = "True",
									UILayoutViewModel = 
									{
										LeftPositon = 21,
										BottomPosition = 60,
										relativeToName = "Panel_root",
										nGravity = 4,
										nAlign = 7
									},
									uipanelviewmodel = 
									{
										Layout="Absolute",
										nType = "0"
									},
									width = "258",
									ZOrder = "1",
								},
							},
						},
					},
				},
				{
					controlID = "Panel_prefab_Panel-roleChoose_Layer1_loginScene_Game",
					UUID = "93a8c15a_5e92_4a60_80a5_b00b5eef1aa1",
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
					height = "640",
					ignoreSize = "False",
					name = "Panel_prefab",
					sizepercentx = "100",
					sizepercenty = "100",
					sizeType = "1",
					srcBlendFunc = "1",
					touchAble = "False",
					UILayoutViewModel = 
					{
						relativeToName = "Panel",
						nType = 3,
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
							controlID = "Button_serverListItem_Panel_prefab_Panel-roleChoose_Layer1_loginScene_Game",
							UUID = "5d4d9cdb_309c_4c4c_830e_9e0a4365146b",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "True;capInsetsX:0;capInsetsY:0;capInsetsWidth:0;capInsetsHeight:0",
							classname = "MEButton",
							ClickHighLightEnabled = "True",
							dstBlendFunc = "771",
							flipX = "False",
							flipY = "False",
							height = "60",
							ignoreSize = "False",
							name = "Button_serverListItem",
							normal = "ui/login/7.png",
							pressed = "ui/login/7.png",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							touchAble = "True",
							UILayoutViewModel = 
							{
								PositionX = 528,
								PositionY = 131,
							},
							UItype = "Button",
							width = "258",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "Label_name_Button_serverListItem_Panel_prefab_Panel-roleChoose_Layer1_loginScene_Game",
									UUID = "380cdaa6_542e_4250_90fd_b5801d88bd09",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									classname = "MELabel",
									compPath = "luacomponents.common.MEIconLabel",
									dstBlendFunc = "771",
									FontColor = "#FFFCF5D8",
									fontName = "font/MFLiHei_Noncommercial.ttf",
									fontShadow = 
									{
										IsShadow = false,
										ShadowColor = "#FFFFFFFF",
										ShadowAlpha = 255,
										OffsetX = 0,
										OffsetY = 0,
									},
									fontSize = "24",
									fontStroke = 
									{
										IsStroke = false,
										StrokeColor = "#FFE6E6E6",
										StrokeSize = 1,
									},
									height = "28",
									ignoreSize = "True",
									name = "Label_name",
									nTextAlign = "1",
									nTextHAlign = "1",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "770",
									text = "develop",
									touchAble = "False",
									touchScaleEnable = "False",
									UILayoutViewModel = 
									{
										IsPercent = true,
									},
									width = "99",
									ZOrder = "1",
								},
							},
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
			"ui/login/88.png",
			"ui/login/7.png",
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

