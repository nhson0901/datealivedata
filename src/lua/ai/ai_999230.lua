return {
    ["links"] = {
        ["D56CC09652CA40F7B991AE951A96C92E"] = {
            [1] = "32538CC2F9EF4193B4A9B3DDD6B77FE3",
        },
        ["6C54512B25E84B0C8E4FBD07FDD5302F"] = {
            [1] = "D56CC09652CA40F7B991AE951A96C92E",
        },
        ["32538CC2F9EF4193B4A9B3DDD6B77FE3"] = {
            [1] = "982128DD261E4FF2B3DE07EADEC9B0AA",
        },
        ["F704226FA6C74EC6A3C6BF7A0A01030D"] = {
            [1] = "6C54512B25E84B0C8E4FBD07FDD5302F",
            [2] = "C176ADC6AE1C4B099E3F217A56B7D08D",
        },
        ["C176ADC6AE1C4B099E3F217A56B7D08D"] = {
            [1] = "8981264181954627A1C78EAF356EC6E3",
        },
        ["8981264181954627A1C78EAF356EC6E3"] = {
            [1] = "FC11C51BC0794FF8B069AEA44E71D7D2",
        },
        ["FC11C51BC0794FF8B069AEA44E71D7D2"] = {
            [1] = "31634846F9864DC1BED6FB2E5CD25AD8",
        },
    },
    ["nodes"] = {
        ["6C54512B25E84B0C8E4FBD07FDD5302F"] = {
            ["Desc"] = "返回分身位置\
分身自我销毁",
            ["Duration"] = 0,
            ["NodeTag"] = "6C54512B25E84B0C8E4FBD07FDD5302F",
            ["TriggerType"] = 0,
            ["Static"] = false,
            ["Pos"] = {
                ["y"] = 526,
                ["x"] = 243,
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
        ["32538CC2F9EF4193B4A9B3DDD6B77FE3"] = {
            ["Desc"] = "顺序行为",
            ["Pos"] = {
                ["y"] = 511,
                ["x"] = 913,
            },
            ["Weight"] = 0,
            ["Class"] = "OrderBevNode",
            ["NodeTag"] = "32538CC2F9EF4193B4A9B3DDD6B77FE3",
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
        ["982128DD261E4FF2B3DE07EADEC9B0AA"] = {
            ["Desc"] = "行为",
            ["Pos"] = {
                ["y"] = 487,
                ["x"] = 1137,
            },
            ["Weight"] = 0,
            ["Class"] = "ChangeSelfHPBevNode",
            ["NodeTag"] = "982128DD261E4FF2B3DE07EADEC9B0AA",
            ["Percent"] = 0,
            ["Type"] = 0,
            ["Static"] = false,
        },
        ["D56CC09652CA40F7B991AE951A96C92E"] = {
            ["CheckState"] = 1,
            ["Pos"] = {
                ["y"] = 525,
                ["x"] = 572,
            },
            ["MonsterId"] = 43207,
            ["Class"] = "CheckStateBevNode",
            ["NodeTag"] = "D56CC09652CA40F7B991AE951A96C92E",
            ["CheckHero"] = 0,
            ["StateId"] = 90,
            ["Static"] = false,
        },
        ["F704226FA6C74EC6A3C6BF7A0A01030D"] = {
            ["Desc"] = "分身时间短",
            ["Pos"] = {
                ["y"] = 376,
                ["x"] = 67,
            },
            ["Category"] = 1,
            ["Class"] = "RootNode",
            ["NodeTag"] = "F704226FA6C74EC6A3C6BF7A0A01030D",
            ["ID"] = "999230",
            ["Name"] = "莎莉分身3",
            ["Static"] = true,
        },
        ["8981264181954627A1C78EAF356EC6E3"] = {
            ["Pos"] = {
                ["y"] = 355,
                ["x"] = 564,
            },
            ["Class"] = "ConditionInFightTimeoutNode",
            ["NodeTag"] = "8981264181954627A1C78EAF356EC6E3",
            ["Duration"] = 1000,
            ["Type"] = 1,
            ["Static"] = false,
        },
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
    },
    ["root"] = "F704226FA6C74EC6A3C6BF7A0A01030D",
}