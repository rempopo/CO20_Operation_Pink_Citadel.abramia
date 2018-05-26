
/*
Dynai zones:

base
castle
patrol
townMaradeurs
*/


/* *********** This array defines detailed properties of zones ************************** */
[
    "patrol", /* Zone Name */
    "EAST",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            5, /* Groups quantity */
            /* Units */
            [
                ["O_Soldier_F", [], "kit_gisl_r"]
                ,["O_Soldier_F", [], "kit_gisl_r"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","WHITE","FILE"]
]

,[
    "base", /* Zone Name */
    "EAST",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            2, /* Groups quantity */
            /* Units */
            [
                ["O_Soldier_F", [], "kit_gisl_ar"]
                ,["O_Soldier_F", [], "kit_gisl_r"]
                ,["O_Soldier_F", [], "kit_gisl_r"]
                ,["O_Soldier_F", [], "kit_gisl_ar"]
            ]
        ]
        ,[
            1, /* Groups quantity */
            /* Units */
            [
                ["O_Soldier_F", ["indoors"], "kit_gisl_r"]
                ,["O_Soldier_F", ["indoors"], "kit_gisl_r"]
                ,["O_Soldier_F", ["indoors"], "kit_gisl_r"]
                ,["O_Soldier_F", ["indoors"], "kit_gisl_r"]
                ,["O_Soldier_F", ["indoors"], "kit_gisl_r"]
                ,["O_Soldier_F", ["indoors"], "kit_gisl_ar"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","YELLOW","STAG COLUMN"]
]

,[
    "castle", /* Zone Name */
    "EAST",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            2, /* Groups quantity */
            /* Units */
            [
                ["O_Soldier_F", [], "kit_gisl_r"]
                ,["O_Soldier_F", [], "kit_gisl_ar"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","white","STAG COLUMN"]
]

,[
    "townMaradeurs", /* Zone Name */
    "EAST",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            2, /* Groups quantity */
            /* Units */
            [
                ["O_Soldier_F", [], "kit_maradeus_random"]
                ,["O_Soldier_F", [], "kit_maradeus_random"]
                ,["O_Soldier_F", [], "kit_maradeus_random"]
            ]
        ]
        , [
            2, /* Groups quantity */
            /* Units */
            [
                ["O_Soldier_F", [], "kit_maradeus_random"]
                ,["O_Soldier_F", [], "kit_maradeus_random"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","YELLOW","WEDGE"]
]
