module Catan.Core exposing (..)


type Point
    = Point Int Int


type Resource
    = Desert
    | Brick
    | Lumber
    | Wool
    | Grain
    | Ore


type alias Panel =
    { point : Point
    , resource : Resource
    , tip : Int
    }


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
