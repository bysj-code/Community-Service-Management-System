const menu = {
    list() {
        return [
    {
        "backMenu":[
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
    {
        "backMenu":[
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-message",
                        "buttons":[
                            "查看"
                        ],
                        "menu":"客服聊天",
                        "menuJump":"列表",
                        "tableName":"chat"
                    }
                ],
                "menu":"客服聊天"
            }
			,
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
                        ],
                        "menu":"房屋",
                        "menuJump":"列表",
                        "tableName":"fangwu"
                    }
                ],
                "menu":"房屋"
            }
			,
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
							"新增"
                        ],
                        "menu":"反馈",
                        "menuJump":"列表",
                        "tableName":"fankiu"
                    }
                ],
                "menu":"反馈"
            }
			,
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
                        ],
                        "menu":"公告",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告"
            }
			
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"是",
        "hasFrontRegister":"是",
        "roleName":"住户",
        "tableName":"yonghu"
    }
]

	}
}
export default menu;
