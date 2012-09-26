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
    fields = {
        {name = "Реж. раб.",
         desc = {word = 1, bit = 12, width = 3,
             text = {
                 ["НК"] = 0,
                 ["ПХ"] = 1,
                 ["ПЛ"] = 2
             }
         }
        },
        {name = "Борт ТА",
         desc = {word = 1, bit = 9, width = 3,
             text = {
                 ["ПБ"] = 0,
                 ["ЛБ"] = 1
             }
         }
        },
        {name = "Пр. ТА",
         desc = {word = 1, bit = 7, width = 2,
             text = {
                 ["Нос"] = 0,
                 ["Борт"] = 1,
                 ["677"] = 2
             }
         }
        },
        {name = "ЛУ",
         desc = {word = 2, bit = 13, width = 2,
             text = {
                 ["Лед"] = 2,
                 ["Нелед"] = 1
             }
         }
        },
        {name = "ВКТ",
         desc = {word = 2, bit = 11, width = 2,
             text = {
                 ["Вниз"] = 0,
                 ["Вверх"] = 1,
                 ["Прямо"] = 2
             }
         }
        },
        {name = "ПрЛ",
         desc = {word = 2, bit = 9, width = 2,
             text = {
                 ["НУ"] = 0,
                 ["Прилед"] = 1
             }
         }
        },
        {name = "ПрГ",
         desc = {word = 2, bit = 7, width = 2,
             text = {
                 ["НУ"] = 0,
                 ["Грунт"] = 1
             }
         }
        },
        {name = "Вст",
         desc = {word = 3, bit = 13, width = 2,
             text = {
                 ["Один"] = 0,
                 ["Залп"] = 1
             }
         }
        },
        {name = "ШТ", desc = {word = 3, bit = 10, width = 3}},
        {name = "Кц", desc = {word = 3, bit = 7, width = 3}},
        {name = "Бц",
         desc = {word = 3, bit = 6, width = 1,
             text = {
                 ["ПБ"] = 0,
                 ["ЛБ"] = 1
             }
         }
        },
        {name = "Дalpha", desc = {word = 4, factor = 2}},
        {name = "Драб", desc = {word = 5, factor = 2}},
        {name = "Дсн", desc = {word = 6, factor = 2}},
        {name = "Дhб", desc = {word = 7, factor = 2}},
        {name = "Да/Дкр", desc = {word = 8, factor = 2}},
        {name = "Дdphi", desc = {word = 9, factor = 2}},
        {name = "Дw1", desc = {word = 10, factor = 2}},
        {name = "Дw2", desc = {word = 11, factor = 2}},
        {name = "Дw3", desc = {word = 12, factor = 2}},
        {name = "h поиска", desc = {word = 13, bit = 2, width = 14}},
        {name = "h марш.", desc = {word = 14, bit = 2, width = 14}},
        {name = "h боевая", desc = {word = 15, bit = 2, width = 14}},
        {name = "h отвед.", desc = {word = 16, bit = 2, width = 14}},
        {name = "hов", desc = {word = 17, bit = 2, width = 14}},
        {name = "hон", desc = {word = 18, bit = 2, width = 14}},
        {name = "h места", desc = {word = 28, bit = 2, width = 14}},
        {name = "w", desc = {word = 19, factor = 0.010986328125}},
        {name = "w + alpha", desc = {word = 20, factor = 0.010986328125}},
        {name = "w + dphi", desc = {word = 21, factor = 0.010986328125}},
        {name = "w1", desc = {word = 22, factor = 0.010986328125}},
        {name = "w2", desc = {word = 23, factor = 0.010986328125}},
        {name = "w3", desc = {word = 24, factor = 0.010986328125}},
        {name = "theta0", desc = {word = 29, factor = 0.0054931640625}},
        {name = "gamma0", desc = {word = 30, factor = 0.010986328125}},
        {name = "Шир. пояс", desc = {word = 31, bit = 9, width = 7}},
        {name = "Дпр", desc = {word = 32, factor = 2}}
    }
}

entry{
    codename = "mg",
    description = "МГ",
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