return {
    ["links"] = {
        ["F704226FA6C74EC6A3C6BF7A0A01030D"] = {
            [1] = "4FE7B890616745F7985044A85E841D09",
        },
        ["1C4F72D87F094B2BBD5474E3E328910A"] = {
            [1] = "DFB0685DD4CC41808982EE687CA6AFDE",
        },
        ["208E285439874E469357E1085EA3A7C9"] = {
            [1] = "1C4F72D87F094B2BBD5474E3E328910A",
        },
        ["4FE7B890616745F7985044A85E841D09"] = {
            [1] = "208E285439874E469357E1085EA3A7C9",
        },
    },
    ["nodes"] = {
        ["208E285439874E469357E1085EA3A7C9"] = {
            ["Pos"] = {
                ["y"] = 500,
                ["x"] = 526,
            },
            ["Class"] = "ConditionRangeHaveEnemyNode",
            ["NodeTag"] = "208E285439874E469357E1085EA3A7C9",
            ["RangeOrigin"] = {
                ["y"] = -15,
                ["x"] = -250,
            },
            ["RangeSize"] = {
                ["height"] = 40000,
                ["width"] = 40000,
            },
            ["Static"] = false,
        },
        ["DFB0685DD4CC41808982EE687CA6AFDE"] = {
            ["Desc"] = "施放技能",
            ["Pos"] = {
                ["y"] = 468,
                ["x"] = 1187,
            },
            ["Weight"] = 10000,
            ["Class"] = "ReleaseSkillBevNode",
            ["NodeTag"] = "DFB0685DD4CC41808982EE687CA6AFDE",
            ["ID"] = 504513,
            ["Type"] = 1,
            ["Static"] = false,
        },
        ["F704226FA6C74EC6A3C6BF7A0A01030D"] = {
            ["Desc"] = "新的 AI",
            ["Pos"] = {
                ["y"] = 236,
                ["x"] = 33,
            },
            ["Category"] = 1,
            ["Class"] = "RootNode",
            ["NodeTag"] = "F704226FA6C74EC6A3C6BF7A0A01030D",
            ["ID"] = "999227",
            ["Name"] = "莎莉BOSS分身",
            ["Static"] = true,
        },
        ["1C4F72D87F094B2BBD5474E3E328910A"] = {
            ["Desc"] = "顺序行为",
            ["Pos"] = {
                ["y"] = 447,
                ["x"] = 921,
            },
            ["Weight"] = 0,
            ["Class"] = "OrderBevNode",
            ["NodeTag"] = "1C4F72D87F094B2BBD5474E3E328910A",
            ["Type"] = 0,
            ["Static"] = false,
        },
        ["4FE7B890616745F7985044A85E841D09"] = {
            ["Desc"] = "子节点",
            ["Duration"] = 8000,
            ["NodeTag"] = "4FE7B890616745F7985044A85E841D09",
            ["TriggerType"] = 0,
            ["Static"] = false,
            ["Pos"] = {
                ["y"] = 460,
                ["x"] = 252,
            },
            ["Class"] = "ChildNode",
            ["Loop"] = 10000,
            ["Parallel"] = 0,
            ["Priority"] = 3,
            ["DurationInterval"] = {
                [1] = 0,
                [2] = 0,
            },
        },
    },
    ["root"] = "F704226FA6C74EC6A3C6BF7A0A01030D",
}