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
    description = "���� - 3",
    address = {
        ["�����."] = 28,
        ["������"] = 27,
    },
    fields = {
        {name = "���. ���.",
         desc = {word = 1, bit = 13, width = 3,
             text = {
                 ["��-��"] = 0,
                 ["��"] = 1,
                 ["��"] = 2,
                 ["��-������"] = 3,
                 ["��"] = 4
             }
         }
        },
        {name = "��",
         desc = {word = 1, bit = 11, width = 2,
             text = {
                 ["��"] = 2,
                 ["��"] = 1
             }
         }
        },
        {name = "��",
         desc = {word = 1, bit = 9, width = 2,
             text = {
                 ["���"] = 2,
                 ["�����"] = 1
             }
         }
        },
        {name = "��",
         desc = {word = 1, bit = 6, width = 3,
             text = {
                 ["1-�"] = 0,
                 ["2-�"] = 1,
                 ["3-�"] = 2,
                 ["4-�"] = 3,
                 ["����. � ���"] = 4,
             }
         }
        },
        {name = "��",
         desc = {word = 1, bit = 3, width = 3,
             text = {
                 ["������ ��"] = 0,
                 ["������ ��"] = 1,
                 ["������ ��"] = 2,
                 ["��������� ��"] = 3,
                 ["����� �� 1 ��"] = 4,
                 ["����� �� 2 ��"] = 5,
                 ["����� �� 3 ��"] = 6,
                 ["����� �� 4 ��"] = 7,
             }
         }
        },
        {name = "���",
         desc = {word = 1, bit = 2, width = 1,
             text = {
                 ["����"] = 0,
                 ["����"] = 1
             }
         }
        },
        {name = "��",
         desc = {word = 2, bit = 15, width = 1,
             text = {
                 ["�����"] = 0,
                 ["����"] = 1
             }
         }
        },
        {name = "��",
         desc = {word = 2, bit = 13, width = 2,
             text = {
                 ["�� � ������� ��"] = 1,
                 ["�� 1-�� ����"] = 2,
                 ["�� 2-�� ����"] = 3,
             }
         }
        },
        {name = "��",
         desc = {word = 2, bit = 12, width = 1,
             text = {
                 ["Vmax"] = 0,
                 ["Vmin"] = 1,
             }
         }
        },
        {name = "��. ��",
         desc = {word = 2, bit = 11, width = 1,
             text = {
                 ["�� ��"] = 0,
                 ["��"] = 1,
             }
         }
        },
        {name = "��. 677",
         desc = {word = 2, bit = 10, width = 1,
             text = {
                 ["�� �� 677"] = 0,
                 ["�� 677"] = 1,
             }
         }
        },
        {name = "���",
         desc = {word = 2, bit = 9, width = 1,
             text = {
                 ["��"] = 0,
                 ["�����"] = 1
             }
         }
        },
        {name = "���",
         desc = {word = 2, bit = 8, width = 1,
             text = {
                 ["��"] = 0,
                 ["������"] = 1
             }
         }
        },
        {name = "���",
         desc = {word = 2, bit = 7, width = 1,
             text = {
                 ["���������"] = 0,
                 ["���������"] = 1
             }
         }
        },
        {name = "���",
         desc = {word = 2, bit = 6, width = 1,
             text = {
                 ["���������"] = 0,
                 ["���������"] = 1
             }
         }
        },
        {name = "�� ���",
         desc = {word = 2, bit = 5, width = 1,
             text = {
                 ["�� ������������"] = 0,
                 ["������������"] = 1
             }
         }
        },
        {name = "���. ����", desc = {word = 3, bit = 10, width = 6}},
        {name = "���",
         desc = {word = 3, bit = 9, width = 1,
             text = {
                 ["�� ��������"] = 0,
                 ["��������"] = 1
             }
         }
        },
        {name = "���� ��",
         desc = {word = 3, bit = 8, width = 1,
             text = {
                 ["��"] = 0,
                 ["��"] = 1
             }
         }
        },
        {name = "���",
         desc = {word = 3, bit = 6, width = 2,
             text = {
                 ["����"] = 0,
                 ["�����"] = 1,
                 ["�����"] = 2
             }
         }
        },
        {name = "��",
         desc = {word = 3, bit = 4, width = 2,
             text = {
                 ["��������� / ����"] = 0,
                 ["������� / ���"] = 1,
                 ["������� / ���"] = 2,
                 ["������ / ����"] = 3
             }
         }
        },
        {name = "�alpha", desc = {word = 4}},
        {name = "����", desc = {word = 5}},
        {name = "�w1", desc = {word = 6}},
        {name = "���", desc = {word = 7}},
        {name = "�w2", desc = {word = 8}},
        {name = "�dphi", desc = {word = 9}},
        {name = "���", desc = {word = 10}},
        {name = "�w3", desc = {word = 11}},
        {name = "��", desc = {word = 12}},
        {name = "�h�", desc = {word = 13}},
        {name = "���", desc = {word = 14}},

        {name = "w1", desc = {word = 17, factor = 0.0054931640625}},
        {name = "w2", desc = {word = 18, factor = 0.0054931640625}},
        {name = "w3", desc = {word = 19, factor = 0.0054931640625}},

        {name = "h ���.", desc = {word = 20}},
        {name = "h ��.", desc = {word = 21}},
        {name = "h ����.", desc = {word = 22}},
        {name = "h ������", desc = {word = 23}},
        {name = "h ������", desc = {word = 24}},
        {name = "h��", desc = {word = 25}},
        {name = "h��", desc = {word = 26}},
        {name = "h �����.", desc = {word = 27}},

        {name = "w", desc = {word = 28, factor = 0.0054931640625}},
        {name = "w + alpha", desc = {word = 29, factor = 0.0054931640625}},
        {name = "w + dphi", desc = {word = 30, factor = 0.0054931640625}},

        {name = "theta0", desc = {word = 31, factor = 0.00274658203125}},
        {name = "gamma0", desc = {word = 32, factor = 0.0054931640625}}
    }
}

entry{
    codename = "mg",
    description = "��",
    address = {
        ["�����."] = 28,
        ["������"] = 27,
    },
    fields = {
        {name = "������.",
         desc = {word = 1, bit = 12, width = 3,
             text = {
                 ["���-1"] = 0,
                 ["�� ��������"] = 1,
                 ["��3"] = 2,
                 ["���-2"] = 3,
                 ["���-3"] = 4
             }
         }
        },
        {name = "N ��. ��.", desc = {word = 1, bit = 9, width = 3}},
        {name = "����. 0", desc = {word = 2, factor = 2}},
        {name = "���� 0", desc = {word = 3, factor = 0.010992}},
        {name = "������� 0", desc = {word = 4, factor = 0.25}},
        {name = "����. 1", desc = {word = 5, factor = 2}},
        {name = "���� 1", desc = {word = 6, factor = 0.010992}},
        {name = "������� 1", desc = {word = 23, factor = 0.25}},
        {name = "����. 1",
         desc = {word = 7, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 1",
         desc = {word = 7, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3
             }
         }
        },
        {name = "����. 1",
         desc = {word = 7, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1
             }
         }
        },
        {name = "��.���. 1",
         desc = {word = 7, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2
             }
         }
        },
        {name = "����. 2", desc = {word = 8, factor = 2}},
        {name = "���� 2", desc = {word = 9, factor = 0.010992}},
        {name = "������� 2", desc = {word = 24, factor = 0.25}},
        {name = "����. 2",
         desc = {word = 10, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 2",
         desc = {word = 10, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3
             }
         }
        },
        {name = "����. 2",
         desc = {word = 10, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1
             }
         }
        },
        {name = "��.���. 2",
         desc = {word = 10, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2
             }
         }
        },
        {name = "����. 3", desc = {word = 11, factor = 2}},
        {name = "���� 3", desc = {word = 12, factor = 0.010992}},
        {name = "������� 3", desc = {word = 25, factor = 0.25}},
        {name = "����. 3",
         desc = {word = 13, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 3",
         desc = {word = 13, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3
             }
         }
        },
        {name = "����. 3",
         desc = {word = 13, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1
             }
         }
        },
        {name = "��.���. 3",
         desc = {word = 13, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2
             }
         }
        },
        {name = "���. ����", desc = {word = 31, bit = 9}},
        {name = "���. ����", desc = {word = 32, factor = 2}}
    }
}

entry{
    codename = "beril",
    description = "�����",
    address = {
        ["�����."] = 29,
        ["������"] = 29,
    },
    fields = {
        {name = "������.",
         desc = {word = 1, bit = 12, width = 3,
             text = {
                 ["���-1"] = 0,
                 ["���"] = 1,
                 ["���"] = 2,
                 ["���-2"] = 3,
                 ["���-3"] = 4,
                 ["���-4"] = 5
             }
         }
        },
        {name = "N ��. ��.", desc = {word = 1, bit = 9, width = 3}},
        {name = "����. 0", desc = {word = 2, factor = 2}},
        {name = "���� 0", desc = {word = 3, factor = 0.010992}},
        {name = "������� 0", desc = {word = 4, factor = 0.25}},
        {name = "����. 0", desc = {word = 29, factor = 0.0054931640625}},
        {name = "���� 0", desc = {word = 30, factor = 0.010986328125}},
        {name = "����. 1", desc = {word = 5, factor = 2}},
        --{name = "���� 1", desc = {word = 6, factor = 0.010992}},
        {dynamic = function(state)
                if state["����. 1"] == "����" then
                    return {name = "���1",
                            desc = {word = 6, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "���� 1", desc = {word = 6, factor = 0.010992}}
                end
            end
        },
        {name = "������� 1", desc = {word = 23, factor = 0.25}},
        {name = "����. 1",
         desc = {word = 7, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 1",
         desc = {word = 7, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "����. 1",
         desc = {word = 7, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "��.���. 1",
         desc = {word = 7, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2,
                 ["��4"] = 3,
                 ["��5"] = 4,
                 ["��3-1"] = 5,
                 ["��3-2"] = 6,
             }
         }
        },
        {name = "����. 2", desc = {word = 8, factor = 2}},
        --{name = "���� 2", desc = {word = 9, factor = 0.010992}},
        {dynamic = function(state)
                if state["����. 2"] == "����" then
                    return {name = "���2",
                            desc = {word = 9, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "���� 2", desc = {word = 9, factor = 0.010992}}
                end
            end
        },
        {name = "������� 2", desc = {word = 24, factor = 0.25}},
        {name = "����. 2",
         desc = {word = 10, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 2",
         desc = {word = 10, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "����. 2",
         desc = {word = 10, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "��.���. 2",
         desc = {word = 10, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2,
                 ["��4"] = 3,
                 ["��5"] = 4,
                 ["��3-1"] = 5,
                 ["��3-2"] = 6,
             }
         }
        },
        {name = "����. 3", desc = {word = 11, factor = 2}},
        --{name = "���� 3", desc = {word = 12, factor = 0.010992}},
        {dynamic = function(state)
                if state["����. 3"] == "����" then
                    return {name = "���3",
                            desc = {word = 12, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "���� 3", desc = {word = 12, factor = 0.010992}}
                end
            end
        },
        {name = "������� 3", desc = {word = 25, factor = 0.25}},
        {name = "����. 3",
         desc = {word = 13, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 3",
         desc = {word = 13, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "����. 3",
         desc = {word = 13, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "��.���. 3",
         desc = {word = 13, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2,
                 ["��4"] = 3,
                 ["��5"] = 4,
                 ["��3-1"] = 5,
                 ["��3-2"] = 6,
             }
         }
        },
        {name = "����. 4", desc = {word = 14, factor = 2}},
        --{name = "���� 4", desc = {word = 15, factor = 0.010992}},
        {dynamic = function(state)
                if state["����. 4"] == "����" then
                    return {name = "���4",
                            desc = {word = 15, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "���� 4", desc = {word = 15, factor = 0.010992}}
                end
            end
        },
        {name = "������� 4", desc = {word = 26, factor = 0.25}},
        {name = "����. 4",
         desc = {word = 16, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 4",
         desc = {word = 16, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "����. 4",
         desc = {word = 16, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "��.���. 4",
         desc = {word = 16, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2,
                 ["��4"] = 3,
                 ["��5"] = 4,
                 ["��3-1"] = 5,
                 ["��3-2"] = 6,
             }
         }
        },
        {name = "����. 5", desc = {word = 17, factor = 2}},
        --{name = "���� 5", desc = {word = 18, factor = 0.010992}},
        {dynamic = function(state)
                if state["����. 5"] == "����" then
                    return {name = "���5",
                            desc = {word = 18, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "���� 5", desc = {word = 18, factor = 0.010992}}
                end
            end
        },
        {name = "����. 5",
         desc = {word = 19, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 5",
         desc = {word = 19, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "����. 5",
         desc = {word = 19, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "��.���. 5",
         desc = {word = 19, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2,
                 ["��4"] = 3,
                 ["��5"] = 4,
                 ["��3-1"] = 5,
                 ["��3-2"] = 6,
             }
         }
        },
        {name = "����. 6", desc = {word = 20, factor = 2}},
        --{name = "���� 6", desc = {word = 21, factor = 0.010992}},
        {dynamic = function(state)
                if state["����. 6"] == "����" then
                    return {name = "���6",
                            desc = {word = 21, bit = 15, width = 1,
                                text = {
                                    ["+"] = 0,
                                    ["-"] = 1
                                }
                            }
                    }
                else
                    return {name = "���� 6", desc = {word = 21, factor = 0.010992}}
                end
            end
        },
        {name = "����. 6",
         desc = {word = 22, bit = 11, width = 1,
             text = {
                 ["����"] = 1,
                 ["���"] = 0
             }
         }
        },
        {name = "���.��. 6",
         desc = {word = 22, bit = 12, width = 2,
             text = {
                 ["h1"] = 1,
                 ["h2"] = 2,
                 ["h3"] = 3,
                 ["h4"] = 0,
             }
         }
        },
        {name = "����. 6",
         desc = {word = 22, bit = 14, width = 2,
             text = {
                 ["V1"] = 0,
                 ["V2"] = 1,
                 ["V3"] = 2,
                 ["V4"] = 3,
             }
         }
        },
        {name = "��.���. 6",
         desc = {word = 22, bit = 8, width = 3,
             text = {
                 ["��1"] = 0,
                 ["��2"] = 1,
                 ["��3"] = 2,
                 ["��4"] = 3,
                 ["��5"] = 4,
                 ["��3-1"] = 5,
                 ["��3-2"] = 6,
             }
         }
        },
        {name = "���. ����", desc = {word = 31, bit = 9}},
    }
}
