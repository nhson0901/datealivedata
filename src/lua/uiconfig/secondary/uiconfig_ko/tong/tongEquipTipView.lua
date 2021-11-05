local t = 
{
	version = 2,
	components = 
	{
		
		{
			controlID = "Panel-tongEquipTipView_Layer1_tong_Game",
			UUID = "b45d16ee_5329_43d7_9ed3_c5b1467b010f",
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
					controlID = "Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
					UUID = "c9a0ed37_3bb4_4ce9_8d1d_c1d44c5adbf7",
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
							controlID = "Image_bg_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
							UUID = "eed059ef_427c_453f_89f4_9962315f5a3b",
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
							controlID = "Label_title_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
							UUID = "782d239f_badf_4517_a92e_aa790f22e4a3",
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
							text = "Special Talent",
							touchAble = "False",
							touchScaleEnable = "False",
							UILayoutViewModel = 
							{
								PositionY = 454,
							},
							width = "164",
							ZOrder = "1",
						},
						{
							controlID = "Button_close_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
							UUID = "007a0564_d1d3_4ca9_baf4_a61c124f14cc",
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
								PositionX = 242,
								PositionY = 455,
							},
							UItype = "Button",
							width = "52",
							ZOrder = "1",
						},
						{
							controlID = "Image_info_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
							UUID = "598a1c93_b6ba_4cb4_9629_c37b562fd305",
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
									controlID = "Panel_skill_Image_info_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
									UUID = "fe4fba2a_8eab_4a50_93d7_d7080de68ec4",
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
										PositionY = 25,
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
											controlID = "Image_bg_Panel_skill_Image_info_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
											UUID = "98efe310_9902_4953_9e12_b7d4f479c1c2",
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
											controlID = "Image_skill_Panel_skill_Image_info_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
											UUID = "291b9a8e_69a8_40d8_bb6a_2b3fab47b35a",
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
									controlID = "Label_skill_desc_Image_info_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
									UUID = "446a8dcd_1c3e_4902_97fc_67ba27f39235",
									anchorPoint = "False",
									anchorPointX = "0",
									anchorPointY = "0.5",
									classname = "MELabel",
									compPath = "luacomponents.common.MEIconLabel",
									dstBlendFunc = "771",
									FontColor = "#FF126280",
									fontName = "font/fangzheng_zhunyuan.ttf",
									fontShadow = 
									{
										IsShadow = false,
										ShadowColor = "#FFFFFFFF",
										ShadowAlpha = 255,
										OffsetX = 0,
										OffsetY = 0,
									},
									fontSize = "20",
									fontStroke = 
									{
										IsStroke = false,
										StrokeColor = "#FFE6E6E6",
										StrokeSize = 1,
									},
									height = "0",
									ignoreSize = "False",
									name = "Label_skill_desc",
									nTextAlign = "1",
									nTextHAlign = "0",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "770",
									text = "TextLable",
									touchAble = "False",
									touchScaleEnable = "False",
									UILayoutViewModel = 
									{
										PositionX = -225,
										PositionY = -43,
									},
									width = "450",
									ZOrder = "1",
								},
							},
						},
						{
							controlID = "Button_handle_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
							UUID = "2345f293_04b1_47b8_b1fd_279a069e2cbe",
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
							name = "Button_handle",
							normal = "ui/tong/common/btn1.png",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "1",
							touchAble = "True",
							UILayoutViewModel = 
							{
								PositionX = 163,
								PositionY = 225,
							},
							UItype = "Button",
							width = "160",
							ZOrder = "1",
							components = 
							{
								
								{
									controlID = "Label_handle_Button_handle_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
									UUID = "3e03fa16_c588_4b8e_8f2b_45da1ed95c89",
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
									height = "27",
									ignoreSize = "True",
									name = "Label_handle",
									nTextAlign = "1",
									nTextHAlign = "1",
									sizepercentx = "0",
									sizepercenty = "0",
									sizeType = "0",
									srcBlendFunc = "770",
									text = "Confirm",
									touchAble = "False",
									touchScaleEnable = "False",
									UILayoutViewModel = 
									{
										
									},
									width = "84",
									ZOrder = "1",
								},
							},
						},
						{
							controlID = "Label_unlock_desc_Panel_root_Panel-tongEquipTipView_Layer1_tong_Game",
							UUID = "64ccfde0_d22a_4b35_be4f_1bd020c407ac",
							anchorPoint = "False",
							anchorPointX = "0.5",
							anchorPointY = "0.5",
							classname = "MELabel",
							compPath = "luacomponents.common.MEIconLabel",
							dstBlendFunc = "771",
							FontColor = "#FF126280",
							fontName = "font/fangzheng_zhunyuan.ttf",
							fontShadow = 
							{
								IsShadow = false,
								ShadowColor = "#FFFFFFFF",
								ShadowAlpha = 255,
								OffsetX = 0,
								OffsetY = 0,
							},
							fontSize = "20",
							fontStroke = 
							{
								IsStroke = false,
								StrokeColor = "#FFE6E6E6",
								StrokeSize = 1,
							},
							height = "23",
							ignoreSize = "True",
							name = "Label_unlock_desc",
							nTextAlign = "1",
							nTextHAlign = "0",
							sizepercentx = "0",
							sizepercenty = "0",
							sizeType = "0",
							srcBlendFunc = "770",
							text = "TextLable",
							touchAble = "False",
							touchScaleEnable = "False",
							UILayoutViewModel = 
							{
								PositionY = 225,
							},
							width = "80",
							ZOrder = "1",
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
			"ui/tong/elite/des.png",
			"ui/tong/common/skill.png",
			"icon/equipment/icon/106_106/icon1_shengli_2.png",
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

