return {
    ["links"] = {
        ["B7AE6F9DB3AA4CB09994AE3962D86B0E"] = {
            [1] = "A89B7B17E9BF4C9F9BB6EFC5D635ADC6",
        },
        ["8353631B0A9349E8B18DC7E040C0601A"] = {
            [1] = "B7AE6F9DB3AA4CB09994AE3962D86B0E",
        },
        ["FC11C51BC0794FF8B069AEA44E71D7D2"] = {
            [1] = "31634846F9864DC1BED6FB2E5CD25AD8",
        },
        ["F704226FA6C74EC6A3C6BF7A0A01030D"] = {
            [1] = "F968CDF146964C50B8A763216055733A",
            [2] = "C176ADC6AE1C4B099E3F217A56B7D08D",
        },
        ["C176ADC6AE1C4B099E3F217A56B7D08D"] = {
            [1] = "8981264181954627A1C78EAF356EC6E3",
        },
        ["8981264181954627A1C78EAF356EC6E3"] = {
            [1] = "FC11C51BC0794FF8B069AEA44E71D7D2",
        },
        ["F968CDF146964C50B8A763216055733A"] = {
            [1] = "8353631B0A9349E8B18DC7E040C0601A",
        },
    },
    ["nodes"] = {
        ["FC11C51BC0794FF8B069AEA44E71D7D2"] = {
            ["Desc"] = "顺序行为",
            ["Pos"] = {
                ["y"] = 341,
                ["x"] = 880,
            },
            ["Weight"] = 0,
            ["Class"] = "OrderBevNode",
            ["NodeTag"] = "FC11C51BC0794FF8B069AEA44E71D7D2",
            ["Type"] = 0,
            ["Static"] = false,
        },
        ["31634846F9864DC1BED6FB2E5CD25AD8"] = {
            ["Desc"] = "行为",
            ["Pos"] = {
                ["y"] = 336,
                ["x"] = 1098,
            },
            ["Weight"] = 100,
            ["Class"] = "ChangeSelfHPBevNode",
            ["NodeTag"] = "31634846F9864DC1BED6FB2E5CD25AD8",
            ["Percent"] = 0,
            ["Type"] = 0,
            ["Static"] = false,
        },
        ["8353631B0A9349E8B18DC7E040C0601A"] = {
            ["CheckState"] = 1,
            ["Pos"] = {
                ["y"] = 505,
                ["x"] = 584,
            },
            ["MonsterId"] = 43206,
            ["Class"] = "CheckStateBevNode",
            ["NodeTag"] = "8353631B0A9349E8B18DC7E040C0601A",
            ["CheckHero"] = 0,
            ["StateId"] = 90,
            ["Static"] = false,
        },
        ["B7AE6F9DB3AA4CB09994AE3962D86B0E"] = {
            ["Desc"] = "顺序行为",
            ["Pos"] = {
                ["y"] = 502,
                ["x"] = 939,
            },
            ["Weight"] = 0,
            ["Class"] = "OrderBevNode",
            ["NodeTag"] = "B7AE6F9DB3AA4CB09994AE3962D86B0E",
            ["Type"] = 0,
            ["Static"] = false,
        },
        ["C176ADC6AE1C4B099E3F217A56B7D08D"] = {
            ["Desc"] = "自我销毁\
",
            ["Duration"] = 0,
            ["NodeTag"] = "C176ADC6AE1C4B099E3F217A56B7D08D",
            ["TriggerType"] = 0,
            ["Static"] = false,
            ["Pos"] = {
                ["y"] = 356,
                ["x"] = 284,
            },
            ["Class"] = "ChildNode",
            ["Loop"] = 0,
            ["Priority"] = 4,
            ["DurationInterval"] = {
                [1] = 0,
                [2] = 0,
            },
        },
        ["F704226FA6C74EC6A3C6BF7A0A01030D"] = {
            ["Desc"] = "新的 AI",
            ["Pos"] = {
                ["y"] = 376,
                ["x"] = 67,
            },
            ["Category"] = 1,
            ["Class"] = "RootNode",
            ["NodeTag"] = "F704226FA6C74EC6A3C6BF7A0A01030D",
            ["ID"] = "999228",
            ["Name"] = "莎莉分身",
            ["Static"] = true,
        },
        ["8981264181954627A1C78EAF356EC6E3"] = {
            ["Pos"] = {
                ["y"] = 355,
                ["x"] = 564,
            },
            ["Class"] = "ConditionInFightTimeoutNode",
            ["NodeTag"] = "8981264181954627A1C78EAF356EC6E3",
            ["Duration"] = 4000,
            ["Type"] = 1,
            ["Static"] = false,
        },
        ["A89B7B17E9BF4C9F9BB6EFC5D635ADC6"] = {
            ["Desc"] = "行为",
            ["Pos"] = {
                ["y"] = 502,
                ["x"] = 1131,
            },
            ["Weight"] = 0,
            ["Class"] = "ChangeSelfHPBevNode",
            ["NodeTag"] = "A89B7B17E9BF4C9F9BB6EFC5D635ADC6",
            ["Percent"] = 0,
            ["Type"] = 0,
            ["Static"] = false,
        },
        ["F968CDF146964C50B8A763216055733A"] = {
            ["Desc"] = "返回分身位置\
分身自我销毁",
            ["Duration"] = 0,
            ["NodeTag"] = "F968CDF146964C50B8A763216055733A",
            ["TriggerType"] = 0,
            ["Static"] = false,
            ["Pos"] = {
                ["y"] = 507,
                ["x"] = 249,
            },
            ["Class"] = "ChildNode",
            ["Loop"] = 0,
            ["Parallel"] = 0,
            ["Priority"] = 5,
            ["DurationInterval"] = {
                [1] = 0,
                [2] = 0,
            },
        },
    },
    ["root"] = "F704226FA6C74EC6A3C6BF7A0A01030D",
}