const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"住户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"住户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"员工管理",
                        "menuJump":"列表",
                        "tableName":"yuangong"
                    }
                ],
                "menu":"员工管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除",
                            "分配"
                        ],
                        "menu":"安保管理",
                        "menuJump":"列表",
                        "tableName":"anbao"
                    }
                ],
                "menu":"安保管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"安保分配管理",
                        "menuJump":"列表",
                        "tableName":"anbaoFenpei"
                    }
                ],
                "menu":"安保分配管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"客服聊天管理",
                        "menuJump":"列表",
                        "tableName":"chat"
                    }
                ],
                "menu":"客服聊天管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"房屋管理",
                        "menuJump":"列表",
                        "tableName":"fangwu"
                    }
                ],
                "menu":"房屋管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除",
                            "安排"
                        ],
                        "menu":"反馈管理",
                        "menuJump":"列表",
                        "tableName":"fankiu"
                    }
                ],
                "menu":"反馈管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"论坛管理",
                        "menuJump":"列表",
                        "tableName":"forum"
                    }
                ],
                "menu":"论坛管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"反馈处理管理",
                        "menuJump":"列表",
                        "tableName":"weixui"
                    }
                ],
                "menu":"反馈处理管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"安排类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryAnbaoFenpei"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"数据类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryChat"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"房屋类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryFangwu"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"反馈类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryFankiu"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"反馈状态管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryFankiuZhuangtai"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"楼栋管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryLoudong"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"状态管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZhuangtai"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
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
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"房屋管理",
                                "menuJump":"列表",
                                "tableName":"fangwu"
                            }
                        ],
                        "menu":"房屋管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"反馈管理",
                                "menuJump":"列表",
                                "tableName":"fankiu"
                            }
                        ],
                        "menu":"反馈管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"论坛管理",
                                "menuJump":"列表",
                                "tableName":"forum"
                            }
                        ],
                        "menu":"论坛管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"公告管理",
                                "menuJump":"列表",
                                "tableName":"gonggao"
                            }
                        ],
                        "menu":"公告管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "已处理"
                                ],
                                "menu":"反馈处理管理",
                                "menuJump":"列表",
                                "tableName":"weixui"
                            }
                        ],
                        "menu":"反馈处理管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                ],
                                "menu":"轮播图管理",
                                "menuJump":"列表",
                                "tableName":"config"
                            }
                        ],
                        "menu":"轮播图信息"
                    }
                ],
                "frontMenu":[],
                "hasBackLogin":"是",
                "hasBackRegister":"否",
                "hasFrontLogin":"否",
                "hasFrontRegister":"否",
                "roleName":"员工",
                "tableName":"yuangong"
            }
]
    }
}
export default menu;