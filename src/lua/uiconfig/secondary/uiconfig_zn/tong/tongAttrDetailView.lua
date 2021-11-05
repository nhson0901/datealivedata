local t = 
{
	version = 2,
	components = 
	{
		
		{
			controlID = "Panel-tongAttrDetailView_Layer1_tong_Game",
			UUID = "e9653386_357f_4196_ba41_2fdf4f35d192",
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
					controlID = "Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
					UUID = "5161726b_1b03_4fda_b6fa_478f9a4ee58c",
					anchorPoint = "False",
					anchorPointX = "0.5",
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
					sizepercentx = "0",
					sizepercenty = "0",
					sizeType = "0",
					srcBlendFunc = "1",
					touchAble = "False",
					UILayoutViewModel = 
					{
						PositionX = 510,
						PositionY = 39,
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
							controlID = "Image_bg_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
							UUID = "a6af0fa4_d99d_4dc7_9c4c_0bb3352bc93f",
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
								PositionY = 320,
							},
							width = "561",
							ZOrder = "1",
						},
						{
							controlID = "Label_title_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
							UUID = "97ea56b0_b544_4fbb_802f_671e7fb6708f",
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
							text = "技能解锁",
							touchAble = "False",
							touchScaleEnable = "False",
							UILayoutViewModel = 
							{
								PositionY = 454,
							},
							width = "90",
							ZOrder = "1",
						},
						{
							controlID = "Button_close_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
							UUID = "e08a5e7d_73d1_4cde_897e_014466892b13",
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
								PositionX = 243,
								PositionY = 456,
							},
							UItype = "Button",
							width = "52",
							ZOrder = "1",
						},
						{
							controlID = "Panel_skill_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
							UUID = "9c309cd2_5a0a_4b5c_abbe_ac4f1d345618",
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
							height = "84",
							ignoreSize = "False",
							name = "Panel_skill",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							touchAble = "False",
							UILayoutViewModel = 
							{
								PositionX = -87,
								PositionY = -220,
							},
							uipanelviewmodel = 
							{
								Layout="Absolute",
								nType = "0"
							},
							width = "97",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "Image_bg_Panel_skill_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
									UUID = "e4362f84_d4d5_47af_9bda_f4c59284cdda",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									backGroundScale9Enable = "False",
									classname = "MEImage",
									dstBlendFunc = "771",
									height = "84",
									ignoreSize = "True",
									name = "Image_bg",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "1",
									texturePath = "ui/tong/common/skill.png",
									touchAble = "False",
									UILayoutViewModel = 
									{
										
									},
									width = "97",
									ZOrder = "1",
								},
								{
									controlID = "Image_skill_Panel_skill_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
									UUID = "c3c23211_c7ea_4b32_8bdb_51857cb5e699",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0.5",
									backGroundScale9Enable = "False",
									classname = "MEImage",
									dstBlendFunc = "771",
									height = "106",
									ignoreSize = "True",
									name = "Image_skill",
									scaleX = "0.7",
									scaleY = "0.7",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "1",
									texturePath = "icon/equipment/icon/106_106/icon1_shengli_2.png",
									touchAble = "False",
									UILayoutViewModel = 
									{
										
									},
									width = "106",
									ZOrder = "1",
								},
							},
						},
						{
							controlID = "Image_info_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
							UUID = "2f7c5a12_bfeb_4c64_ba77_63c31dab0607",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							backGroundScale9Enable = "False",
							classname = "MEImage",
							dstBlendFunc = "771",
							height = "149",
							ignoreSize = "True",
							name = "Image_info",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							texturePath = "ui/tong/elite/des.png",
							touchAble = "False",
							UILayoutViewModel = 
							{
								PositionY = 348,
							},
							width = "478",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "ScrollView_skillList_Image_info_Panel_root_Panel-tongAttrDetailView_Layer1_tong_Game",
									UUID = "453fde18_088d_4042_9d9a_640da49d9cbb",
									anchorPoint = "False",
									anchorPointX = "0.5",
									anchorPointY = "0",
									backGroundScale9Enable = "False",
									bgColorOpacity = "50",
									bIsOpenClipping = "True",
									bounceEnable = "False",
									classname = "MEScrollView",
									colorType = "0;SingleColor:#FFE6E6E6;GraduallyChangingColorStart:#FFFFFFFF;GraduallyChangingColorEnd:#FFFFFFFF;vectorX:0;vectorY:0",
									direction = "2",
									dstBlendFunc = "771",
									height = "97",
									ignoreSize = "False",
									innerHeight = "97",
									innerWidth = "350",
									name = "ScrollView_skillList",
									showScrollbar = "False",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "1",
									touchAble = "True",
									UILayoutViewModel = 
									{
										PositionY = -45,
									},
									uipanelviewmodel = 
									{
										Layout="Absolute",
										nType = "0"
									},
									width = "350",
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
			"ui/tong/common/close.png",
			"ui/tong/common/skill.png",
			"icon/equipment/icon/106_106/icon1_shengli_2.png",
			"ui/tong/elite/des.png",
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

