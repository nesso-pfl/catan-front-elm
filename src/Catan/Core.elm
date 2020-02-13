module Catan.Core exposing (..)

import List as L


type Point
    = Point Int Int


type Resource
    = Desert
    | Brick
    | Lumber
    | Wool
    | Grain
    | Ore


boardResources : List Resource
boardResources =
    L.concat
        [ L.repeat 1 Desert
        , L.repeat 4 Brick
        , L.repeat 3 Lumber
        , L.repeat 4 Wool
        , L.repeat 4 Grain
        , L.repeat 3 Ore
        ]


type alias Panel =
    { point : Point
    , resource : Resource
    , tip : Int
    }


boardTips : List Int
boardTips =
    [ 2, 3, 3, 4, 4, 5, 5, 6, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12 ]


panelPoints : List Point
panelPoints =
    [ Point -4 4
    , Point 0 6
    , Point 4 8
    , Point -6 0
    , Point -2 2
    , Point 2 4
    , Point 6 6
    , Point -8 -4
    , Point -4 -2
    , Point 0 0
    , Point 4 2
    , Point 8 4
    , Point -6 -6
    , Point -2 -4
    , Point 2 -2
    , Point 6 0
    , Point -4 -8
    , Point 0 -6
    , Point 4 -4
    ]


buildingPoints : List Point
buildingPoints =
    [ Point -4 6
    , Point 0 8
    , Point 4 10
    , Point -6 4
    , Point -2 6
    , Point 2 8
    , Point 6 10
    , Point -6 2
    , Point -2 4
    , Point 2 6
    , Point 6 8
    , Point -8 0
    , Point -4 2
    , Point 0 4
    , Point 4 6
    , Point 8 8
    , Point -8 -2
    , Point -4 0
    , Point 0 2
    , Point 4 4
    , Point 8 6
    , Point -10 -4
    , Point -6 -2
    , Point -2 0
    , Point 2 2
    , Point 6 4
    , Point 10 6
    , Point -10 -6
    , Point -6 -4
    , Point -2 -2
    , Point 2 0
    , Point 6 2
    , Point 10 4
    , Point -8 -6
    , Point -4 -4
    , Point 0 -2
    , Point 4 0
    , Point 8 2
    , Point -8 -8
    , Point -4 -6
    , Point 0 -4
    , Point 4 -2
    , Point 8 0
    , Point -6 -8
    , Point -2 -6
    , Point 2 -4
    , Point 6 -2
    , Point -6 -10
    , Point -2 -8
    , Point 2 -6
    , Point 6 -4
    , Point -4 -10
    , Point 0 -8
    , Point 4 -6
    ]


type alias Harbor =
    { point : Point
    , resource : Resource
    }


type Road
    = Road Point


type Building
    = Settlement Point
    | City Point


type User
    = Self
        { id : String
        , resources : List Resource
        , cards : List Card
        }
    | Other
        { id : String
        , resourceNum : Int
        , cardNum : Int
        }


type Card
    = VictoryPoint
    | Knight
    | Monopoly


type Phase
    = Dice
    | Yield
    | Thief
    | Resource
    | Build
    | Card
    | Trade
    | Victory
    | End


dice : Int -> Int -> Int
dice n m =
    n + m
