--[[
description of all availiable formats
factor:
    real number = array number * factor
if omitted:
    factor = 1
    width = 16
    bit = 0
]]

entry{
    codename = "kant3",
    description = "КАНТ - 3",
    address = {
        ["Практ."] = 28,
        ["Боевой"] = 27,
    },
    fields = {
        {name = "Реж. раб.",
         desc = {word = 1, bit = 13, width = 3,
             text = {
                 ["НК-КС"] = 0,
                 ["ПХ"] = 1,
                 ["ПЛ"] = 2,
                 ["НК-корпус"] = 3,
                 ["ИЦ"] = 4
             }
         }
        },
        {name = "Бц",
         desc = {word = 1, bit = 11, width = 2,
             text = {
                 ["ПБ"] = 2,
                 ["ЛБ"] = 1
             }
         }
        },
        {name = "ЛУ",
         desc = {word = 1, bit = 9, width = 2,
             text = {
                 ["Лед"] = 2,
                 ["Нелед"] = 1
             }
         }
        },
        {name = "ШТ",
         desc = {word = 1, bit = 6, width = 3,
             text = {
                 ["1-я"] = 0,
                 ["2-я"] = 1,
                 ["3-я"] = 2,
                 ["4-я"] = 3,
                 ["Один. с КМВ"] = 4,
             }
         }
        },
        {name = "Кц",
         desc = {word = 1, bit = 3, width = 3,
             text = {
                 ["Первый КС"] = 0,
                 ["Второй КС"] = 1,
                 ["Третий КС"] = 2,
                 ["Четвертый КС"] = 3,
                 ["Выбор из 1 КС"] = 4,
                 ["Выбор из 2 КС"] = 5,
                 ["Выбор из 3 КС"] = 6,
                 ["Выбор из 4 КС"] = 7,
             }
         }
        },
        {name = "Вст",
         desc = {word = 1, bit = 2, width = 1,
             text = {
                 ["Один"] = 0,
                 ["Залп"] = 1
             }
         }
        },
        {name = "ЗЦ",
         desc = {word = 2, bit = 15, width = 1,
             text = {
                 ["Право"] = 0,
                 ["Лево"] = 1
             }
         }
        },
        {name = "ПН",
         desc = {word = 2, bit = 13, width = 2,
             text = {
                 ["ПЛ с осевыми ТА"] = 1,
                 ["НК 1-го типа"] = 2,
                 ["НК 2-го типа"] = 3,
             }
         }
        },
        {name = "РД",
         desc = {word = 2, bit = 12, width = 1,
             text = {
                 ["Vmax"] = 0,
                 ["Vmin"] = 1,
             }
         }
        },
        {name = "Пр. ТА",
         desc = {word = 2, bit = 11, width = 1,
             text = {
                 ["Не ПЛ"] = 0,
                 ["ПЛ"] = 1,
             }
         }
        },
        {name = "Пр. 677",
         desc = {word = 2, bit = 10, width = 1,
             text = {
                 ["Не ПЛ 677"] = 0,
                 ["ПЛ 677"] = 1,
             }
         }
        },
        {name = "ПрГ",
         desc = {word = 2, bit = 9, width = 1,
             text = {
                 ["НУ"] = 0,
                 ["Грунт"] = 1
             }
         }
        },
        {name = "ПрЛ",
         desc = {word = 2, bit = 8, width = 1,
             text = {
                 ["НУ"] = 0,
                 ["Прилед"] = 1
             }
         }
        },
        {name = "ВБл",
         desc = {word = 2, bit = 7, width = 1,
             text = {
                 ["Разрешено"] = 0,
                 ["Запрещено"] = 1
             }
         }
        },
        {name = "МВП",
         desc = {word = 2, bit = 6, width = 1,
             text = {
                 ["Разрешено"] = 0,
                 ["Запрещено"] = 1
             }
         }
        },
        {name = "МС ССН",
         desc = {word = 2, bit = 5, width = 1,
             text = {
                 ["Не используется"] = 0,
                 ["Используется"] = 1
             }
         }
        },
        {name = "Шир. пояс", desc = {word = 3, bit = 10, width = 6}},
        {name = "ВТУ",
         desc = {word = 3, bit = 9, width = 1,
             text = {
                 ["Не включено"] = 0,
                 ["Включено"] = 1
             }
         }
        },
        {name = "Борт ТА",
         desc = {word = 3, bit = 8, width = 1,
             text = {
                 ["ПБ"] = 0,
                 ["ЛБ"] = 1
             }
         }
        },
        {name = "ВКТ",
         desc = {word = 3, bit = 6, width = 2,
             text = {
                 ["Вниз"] = 0,
                 ["Вверх"] = 1,
                 ["Прямо"] = 2
             }
         }
        },
        {name = "РЦ",
         desc = {word = 3, bit = 4, width = 2,
             text = {
                 ["Авианосец / АПРЛ"] = 0,
                 ["Крейсер / АПЛ"] = 1,
                 ["Эсминец / ДПЛ"] = 2,
                 ["Корвет / СМПЛ"] = 3
             }
         }
        },
        {name = "Дalpha", desc = {word = 4}},
        {name = "Драб", desc = {word = 5}},
        {name = "Дw1", desc = {word = 6}},
        {name = "Дсн", desc = {word = 7}},
        {name = "Дw2", desc = {word = 8}},
        {name = "Дdphi", desc = {word = 9}},
        {name = "Дкр", desc = {word = 10}},
        {name = "Дw3", desc = {word = 11}},
        {name = "Да", desc = {word = 12}},
        {name = "Дhб", desc = {word = 13}},
        {name = "Дпр", desc = {word = 14}},

        {name = "w1", desc = {word = 17, factor = 0.0054931640625}},
        {name = "w2", desc = {word = 18, factor = 0.0054931640625}},
        {name = "w3", desc = {word = 19, factor = 0.0054931640625}},

        {name = "h акв.", desc = {word = 20}},
        {name = "h ск.", desc = {word = 21}},
        {name = "h марш.", desc = {word = 22}},
        {name = "h поиска", desc = {word = 23}},
        {name = "h боевая", desc = {word = 24}},
        {name = "hов", desc = {word = 25}},
        {name = "hон", desc = {word = 26}},
        {name = "h отвед.", desc = {word = 27}},

        {name = "w", desc = {word = 28, factor = 0.0054931640625}},
        {name = "w + alpha", desc = {word = 29, factor = 0.0054931640625}},
        {name = "w + dphi", desc = {word = 30, factor = 0.0054931640625}},

        {name = "theta0", desc = {word = 31, factor = 0.00274658203125}},
        {name = "gamma0", desc = {word = 32, factor = 0.0054931640625}}
    }
}

entry{
    codename = "mg",
    description = "МГ",
    address = {
        ["Практ."] = 28,
        ["Боевой"] = 27,
    },
    fields = {
        {name = "Назнач.",
         desc = {word = 1, bit = 12, width = 3,
             text = {
                 ["ГПД-1"] = 0,
                 ["Не вводится"] = 1,
                 ["ПТ3"] = 2,
                 ["ГПД-2"] = 3,
                 ["ГПД-3"] = 4
             }
         }
        },
        {name = "N сп. уч.", desc = {word = 1, bit = 9, width = 3}},
        {name = "Дист. 0", desc = {word = 2, factor = 2}},
        {name = "Курс 0", desc = {word = 3, factor = 0.010992}},
        {name = "Глубина 0", desc = {word = 4, factor = 0.25}},
        {name = "Дист. 1", desc = {word = 5, factor = 2}},
        {name = "Курс 1", desc = {word = 6, factor = 0.010992}},
        {name = "Глубина 1", desc = {word = 23, factor = 0.25}},
        {name = "Цирк. 1",
         desc = {word = 7, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 1",
         desc = {word = 7, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3
             }
         }
        },
        {name = "Скор. 1",
         desc = {word = 7, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1
             }
         }
        },
        {name = "Ак.реж. 1",
         desc = {word = 7, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2
             }
         }
        },
        {name = "Дист. 2", desc = {word = 8, factor = 2}},
        {name = "Курс 2", desc = {word = 9, factor = 0.010992}},
        {name = "Глубина 2", desc = {word = 24, factor = 0.25}},
        {name = "Цирк. 2",
         desc = {word = 10, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 2",
         desc = {word = 10, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3
             }
         }
        },
        {name = "Скор. 2",
         desc = {word = 10, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1
             }
         }
        },
        {name = "Ак.реж. 2",
         desc = {word = 10, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2
             }
         }
        },
        {name = "Дист. 3", desc = {word = 11, factor = 2}},
        {name = "Курс 3", desc = {word = 12, factor = 0.010992}},
        {name = "Глубина 3", desc = {word = 25, factor = 0.25}},
        {name = "Цирк. 3",
         desc = {word = 13, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 3",
         desc = {word = 13, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3
             }
         }
        },
        {name = "Скор. 3",
         desc = {word = 13, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1
             }
         }
        },
        {name = "Ак.реж. 3",
         desc = {word = 13, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2
             }
         }
        },
        {name = "Шир. пояс", desc = {word = 31, bit = 9}},
        {name = "Дал. хода", desc = {word = 32, factor = 2}}
    }
}

entry{
    codename = "beril",
    description = "Берил",
    address = {
        ["Практ."] = 29,
        ["Боевой"] = 29,
    },
    fields = {
        {name = "Назнач.",
         desc = {word = 1, bit = 12, width = 3,
             text = {
                 ["ГПД-1"] = 0,
                 ["ПМЗ"] = 1,
                 ["ПТЗ"] = 2,
                 ["ГПД-2"] = 3,
                 ["ГПД-3"] = 4,
                 ["ГПД-4"] = 5
             }
         }
        },
        {name = "N сп. уч.", desc = {word = 1, bit = 9, width = 3}},
        {name = "Дист. 0", desc = {word = 2, factor = 2}},
        {name = "Курс 0", desc = {word = 3, factor = 0.010992}},
        {name = "Глубина 0", desc = {word = 4, factor = 0.25}},
        {name = "Дифф. 0", desc = {word = 29, factor = 0.0054931640625}},
        {name = "Крен 0", desc = {word = 30, factor = 0.010986328125}},
        {name = "Дист. 1", desc = {word = 5, factor = 2}},
        --{name = "Курс 1", desc = {word = 6, factor = 0.010992}},
        {dynamic = function(state)
                if state["Цирк. 1"] == "Есть" then
                    return {name = "ЗнЦ1",
                            desc = {word = 6, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "Курс 1", desc = {word = 6, factor = 0.010992}}
                end
            end
        },
        {name = "Глубина 1", desc = {word = 23, factor = 0.25}},
        {name = "Цирк. 1",
         desc = {word = 7, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 1",
         desc = {word = 7, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "Скор. 1",
         desc = {word = 7, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "Ак.реж. 1",
         desc = {word = 7, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2,
                 ["АР4"] = 3,
                 ["АР5"] = 4,
                 ["АР3-1"] = 5,
                 ["АР3-2"] = 6,
             }
         }
        },
        {name = "Дист. 2", desc = {word = 8, factor = 2}},
        --{name = "Курс 2", desc = {word = 9, factor = 0.010992}},
        {dynamic = function(state)
                if state["Цирк. 2"] == "Есть" then
                    return {name = "ЗнЦ2",
                            desc = {word = 9, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "Курс 2", desc = {word = 9, factor = 0.010992}}
                end
            end
        },
        {name = "Глубина 2", desc = {word = 24, factor = 0.25}},
        {name = "Цирк. 2",
         desc = {word = 10, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 2",
         desc = {word = 10, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "Скор. 2",
         desc = {word = 10, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "Ак.реж. 2",
         desc = {word = 10, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2,
                 ["АР4"] = 3,
                 ["АР5"] = 4,
                 ["АР3-1"] = 5,
                 ["АР3-2"] = 6,
             }
         }
        },
        {name = "Дист. 3", desc = {word = 11, factor = 2}},
        --{name = "Курс 3", desc = {word = 12, factor = 0.010992}},
        {dynamic = function(state)
                if state["Цирк. 3"] == "Есть" then
                    return {name = "ЗнЦ3",
                            desc = {word = 12, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "Курс 3", desc = {word = 12, factor = 0.010992}}
                end
            end
        },
        {name = "Глубина 3", desc = {word = 25, factor = 0.25}},
        {name = "Цирк. 3",
         desc = {word = 13, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 3",
         desc = {word = 13, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "Скор. 3",
         desc = {word = 13, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "Ак.реж. 3",
         desc = {word = 13, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2,
                 ["АР4"] = 3,
                 ["АР5"] = 4,
                 ["АР3-1"] = 5,
                 ["АР3-2"] = 6,
             }
         }
        },
        {name = "Дист. 4", desc = {word = 14, factor = 2}},
        --{name = "Курс 4", desc = {word = 15, factor = 0.010992}},
        {dynamic = function(state)
                if state["Цирк. 4"] == "Есть" then
                    return {name = "ЗнЦ4",
                            desc = {word = 15, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "Курс 4", desc = {word = 15, factor = 0.010992}}
                end
            end
        },
        {name = "Глубина 4", desc = {word = 26, factor = 0.25}},
        {name = "Цирк. 4",
         desc = {word = 16, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 4",
         desc = {word = 16, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "Скор. 4",
         desc = {word = 16, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "Ак.реж. 4",
         desc = {word = 16, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2,
                 ["АР4"] = 3,
                 ["АР5"] = 4,
                 ["АР3-1"] = 5,
                 ["АР3-2"] = 6,
             }
         }
        },
        {name = "Дист. 5", desc = {word = 17, factor = 2}},
        --{name = "Курс 5", desc = {word = 18, factor = 0.010992}},
        {dynamic = function(state)
                if state["Цирк. 5"] == "Есть" then
                    return {name = "ЗнЦ5",
                            desc = {word = 18, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "Курс 5", desc = {word = 18, factor = 0.010992}}
                end
            end
        },
        {name = "Цирк. 5",
         desc = {word = 19, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 5",
         desc = {word = 19, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "Скор. 5",
         desc = {word = 19, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "Ак.реж. 5",
         desc = {word = 19, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2,
                 ["АР4"] = 3,
                 ["АР5"] = 4,
                 ["АР3-1"] = 5,
                 ["АР3-2"] = 6,
             }
         }
        },
        {name = "Дист. 6", desc = {word = 20, factor = 2}},
        --{name = "Курс 6", desc = {word = 21, factor = 0.010992}},
        {dynamic = function(state)
                if state["Цирк. 6"] == "Есть" then
                    return {name = "ЗнЦ6",
                            desc = {word = 21, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "Курс 6", desc = {word = 21, factor = 0.010992}}
                end
            end
        },
        {name = "Цирк. 6",
         desc = {word = 22, bit = 11, width = 1,
             text = {
                 ["Есть"] = 1,
                 ["Нет"] = 0
             }
         }
        },
        {name = "Ном.Гл. 6",
         desc = {word = 22, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "Скор. 6",
         desc = {word = 22, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "Ак.реж. 6",
         desc = {word = 22, bit = 8, width = 3,
             text = {
                 ["АР1"] = 0,
                 ["АР2"] = 1,
                 ["АР3"] = 2,
                 ["АР4"] = 3,
                 ["АР5"] = 4,
                 ["АР3-1"] = 5,
                 ["АР3-2"] = 6,
             }
         }
        },
        {name = "Шир. пояс", desc = {word = 31, bit = 9}},
    }
}
