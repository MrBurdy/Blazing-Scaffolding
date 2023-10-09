
# EN
execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Green","color":"green"}, \
        {"text":", "}, \
        {"text":"Red","color":"red"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]
execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Green","color":"green"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Red","color":"red"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Red","color":"red"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Red","color":"red"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!"} \
    ]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Yellow","color":"yellow"}, \
        {"text":" win!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=0}] title [ \
        {"text":"Team "}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Red","color":"red"}, \
        {"text":" win!"} \
    ]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=0}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"Team ","color":"gray"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Green","color":"green"}, \
        {"text":" and "}, \
        {"text":"Red","color":"red"}, \
        {"text":" win!","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]



# FR
execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Verte","color":"green"}, \
        {"text":", "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]
execute unless entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe","color":"gray"}, \
        {"text":"Verte","color":"green"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        if entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe","color":"gray"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !"} \
    ]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe","color":"gray"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Jaune","color":"yellow"}, \
        {"text":" a gagné !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run title @a[scores={option.language=1}] title [ \
        {"text":"L'équipe"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", "}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" a gagné !"} \
    ]
execute if entity @a[team=blue,tag=!TeamEliminated,limit=1] \
        if entity @a[team=green,tag=!TeamEliminated,limit=1] \
        if entity @a[team=red,tag=!TeamEliminated,limit=1] \
        unless entity @a[team=yellow,tag=!TeamEliminated,limit=1] \
    run tellraw @a[scores={option.language=1}] [ \
        {"text":"====================================","color":"dark_gray"}, \
        {"text":"\n\n"}, \
        {"text":"[BS] ","color":"gold"}, \
        {"text":"L'équipe","color":"gray"}, \
        {"text":"Blue","color":"blue"}, \
        {"text":", ","color":"gray"}, \
        {"text":"Verte","color":"green"}, \
        {"text":" et "}, \
        {"text":"Rouge","color":"red"}, \
        {"text":" a gagné !","color":"gray"}, \
        {"text":"\n\n"}, \
        {"text":"====================================","color":"dark_gray"} \
    ]

