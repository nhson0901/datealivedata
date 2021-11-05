local t = 
{
	version = 2,
	components = 
	{
		
		{
			controlID = "Panel-tongAskHelpView_Layer1_tong_Game",
			UUID = "13f62a41_ae15_4174_8234_4d759f0dbd3d",
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
					controlID = "Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
					UUID = "5972b3f7_4679_446a_af8d_0594f930a49b",
					anchorPoint = "False",
					anchorPointX = "0.5",
					anchorPointY = "0.5",
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
					sizepercentx = "0",
					sizepercenty = "0",
					sizeType = "0",
					srcBlendFunc = "1",
					touchAble = "False",
					UILayoutViewModel = 
					{
						PositionX = 568,
						PositionY = 320,
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
					width = "1386",
					ZOrder = "1",
					components = 
					{
						
						{
							controlID = "Image_bg_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
							UUID = "10f1ce2a_3123_4b62_a8bd_9cffe1b52959",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "False",
							classname = "MEImage",
							dstBlendFunc = "771",
							height = "347",
							ignoreSize = "True",
							name = "Image_bg",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							texturePath = "ui/tong/common/small.png",
							touchAble = "False",
							UILayoutViewModel = 
							{
								
							},
							width = "561",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "Image_bg2_Image_bg_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
									UUID = "3d6030e3_3be4_49c1_b2d4_957e95d5a507",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									backGroundScale9Enable = "True;capInsetsX:0;capInsetsY:0;capInsetsWidth:0;capInsetsHeight:0",
									classname = "MEImage",
									dstBlendFunc = "771",
									height = "160",
									ignoreSize = "False",
									name = "Image_bg2",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "1",
									texturePath = "ui/tong/elite/des.png",
									touchAble = "False",
									UILayoutViewModel = 
									{
										PositionY = 16,
									},
									width = "478",
									ZOrder = "1",
								},
							},
						},
						{
							controlID = "Label_title_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
							UUID = "3036e755_595a_416e_9891_b3df3b8bd547",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							classname = "MELabel",
							compPath = "luacomponents.common.MEIconLabel",
							dstBlendFunc = "771",
							FontColor = "#FF1F8993",
							fontName = "font/MFLiHei_Noncommercial.ttf",
							fontShadow = 
							{
								IsShadow = false,
								ShadowColor = "#FFFFFFFF",
								ShadowAlpha = 255,
								OffsetX = 0,
								OffsetY = 0,
							},
							fontSize = "22",
							fontStroke = 
							{
								IsStroke = false,
								StrokeColor = "#FFE6E6E6",
								StrokeSize = 1,
							},
							height = "25",
							ignoreSize = "True",
							name = "Label_title",
							nTextAlign = "1",
							nTextHAlign = "1",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "770",
							text = "Elite Invasion",
							touchAble = "False",
							touchScaleEnable = "False",
							UILayoutViewModel = 
							{
								PositionY = 131,
							},
							width = "161",
							ZOrder = "1",
						},
						{
							controlID = "Button_close_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
							UUID = "65d720cb_62ad_4ebb_ba6a_8cd5f6079a23",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "False",
							classname = "MEButton",
							ClickHighLightEnabled = "True",
							dstBlendFunc = "771",
							flipX = "False",
							flipY = "False",
							height = "52",
							ignoreSize = "True",
							name = "Button_close",
							normal = "ui/tong/common/close.png",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							touchAble = "True",
							UILayoutViewModel = 
							{
								PositionX = 237,
								PositionY = 128,
							},
							UItype = "Button",
							width = "52",
							ZOrder = "1",
						},
						{
							controlID = "Button_ask_2_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
							UUID = "db2d5cb1_beec_4238_bc97_9b4c4ee5a122",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "False",
							classname = "MEButton",
							ClickHighLightEnabled = "True",
							dstBlendFunc = "771",
							flipX = "False",
							flipY = "False",
							height = "119",
							ignoreSize = "True",
							name = "Button_ask_2",
							normal = "ui/tong/elite/013.png",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							touchAble = "True",
							UILayoutViewModel = 
							{
								PositionX = -145,
								PositionY = 29,
							},
							UItype = "Button",
							width = "122",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "Label_Button_ask_2_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
									UUID = "dd7a7b91_edea_4dd3_8f9c_9f00e18e272a",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									classname = "MELabel",
									compPath = "luacomponents.common.MEIconLabel",
									dstBlendFunc = "771",
									FontColor = "#FF1F8993",
									fontName = "font/MFLiHei_Noncommercial.ttf",
									fontShadow = 
									{
										IsShadow = false,
										ShadowColor = "#FFFFFFFF",
										ShadowAlpha = 255,
										OffsetX = 0,
										OffsetY = 0,
									},
									fontSize = "26",
									fontStroke = 
									{
										IsStroke = false,
										StrokeColor = "#FFE6E6E6",
										StrokeSize = 1,
									},
									height = "30",
									ignoreSize = "True",
									name = "Label",
									nTextAlign = "1",
									nTextHAlign = "1",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "770",
									text = "Club",
									touchAble = "False",
									touchScaleEnable = "False",
									UILayoutViewModel = 
									{
										PositionY = -78,
									},
									width = "65",
									ZOrder = "1",
								},
								{
									controlID = "Image_select_Button_ask_2_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
									UUID = "44d5861f_67f1_44ab_8807_b97b25f2243f",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									backGroundScale9Enable = "False",
									classname = "MEImage",
									dstBlendFunc = "771",
									height = "145",
									ignoreSize = "True",
									name = "Image_select",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "1",
									texturePath = "ui/tong/elite/012.png",
									touchAble = "False",
									UILayoutViewModel = 
									{
										
									},
									visible = "False",
									width = "148",
									ZOrder = "1",
								},
							},
						},
						{
							controlID = "Button_ask_1_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
							UUID = "e3c24b6c_65bd_40bc_96b2_a1f638a6d57f",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "False",
							classname = "MEButton",
							ClickHighLightEnabled = "True",
							dstBlendFunc = "771",
							flipX = "False",
							flipY = "False",
							height = "119",
							ignoreSize = "True",
							name = "Button_ask_1",
							normal = "ui/tong/elite/014.png",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							touchAble = "True",
							UILayoutViewModel = 
							{
								PositionX = 138,
								PositionY = 27,
							},
							UItype = "Button",
							width = "122",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "Image_select_Button_ask_1_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
									UUID = "0a8decc1_22a6_4099_9c8a_5ed086f5f134",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									backGroundScale9Enable = "False",
									classname = "MEImage",
									dstBlendFunc = "771",
									height = "145",
									ignoreSize = "True",
									name = "Image_select",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "1",
									texturePath = "ui/tong/elite/012.png",
									touchAble = "False",
									UILayoutViewModel = 
									{
										
									},
									width = "148",
									ZOrder = "1",
								},
								{
									controlID = "Label_Button_ask_1_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
									UUID = "21c418f0_731f_4fe7_bea9_848da4f0a752",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									classname = "MELabel",
									compPath = "luacomponents.common.MEIconLabel",
									dstBlendFunc = "771",
									FontColor = "#FF1F8993",
									fontName = "font/MFLiHei_Noncommercial.ttf",
									fontShadow = 
									{
										IsShadow = false,
										ShadowColor = "#FFFFFFFF",
										ShadowAlpha = 255,
										OffsetX = 0,
										OffsetY = 0,
									},
									fontSize = "26",
									fontStroke = 
									{
										IsStroke = false,
										StrokeColor = "#FFE6E6E6",
										StrokeSize = 1,
									},
									height = "30",
									ignoreSize = "True",
									name = "Label",
									nTextAlign = "1",
									nTextHAlign = "1",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "770",
									text = "Friends",
									touchAble = "False",
									touchScaleEnable = "False",
									UILayoutViewModel = 
									{
										PositionY = -78,
									},
									width = "106",
									ZOrder = "1",
								},
							},
						},
						{
							controlID = "Button_askHelp_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
							UUID = "f3ea2c41_fc7b_4843_945d_c79fbec4d103",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "False",
							classname = "MEButton",
							ClickHighLightEnabled = "True",
							dstBlendFunc = "771",
							flipX = "False",
							flipY = "False",
							height = "89",
							ignoreSize = "True",
							name = "Button_askHelp",
							normal = "ui/tong/common/btn1.png",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							touchAble = "True",
							UILayoutViewModel = 
							{
								PositionX = 162,
								PositionY = -102,
							},
							UItype = "Button",
							width = "160",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "Label_btn_Button_askHelp_Panel_root_Panel-tongAskHelpView_Layer1_tong_Game",
									UUID = "286df7f6_d2dd_42c6_88dc_fa93f651c249",
									anchorPoint = "False",
									anchorPointX = "0.5",
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
									fontSize = "24",
									fontStroke = 
									{
										IsStroke = false,
										StrokeColor = "#FFE6E6E6",
										StrokeSize = 1,
									},
									height = "0",
									ignoreSize = "False",
									name = "Label_btn",
									nTextAlign = "1",
									nTextHAlign = "1",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "770",
									text = "Ask for Support",
									touchAble = "False",
									touchScaleEnable = "False",
									UILayoutViewModel = 
									{
										
									},
									width = "114",
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
			"ui/tong/common/small.png",
			"ui/tong/elite/des.png",
			"ui/tong/common/close.png",
			"ui/tong/elite/013.png",
			"ui/tong/elite/012.png",
			"ui/tong/elite/014.png",
			"ui/tong/common/btn1.png",
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

