module CatanCore exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


equal : a -> a -> () -> Expectation
equal a b =
    \_ -> Expect.equal a b


initialModelSuite : Test
initialModelSuite =
    describe "Initial model"
        [ test "panels are 19" <|
            equal "" ""
        , test "panels are set at correct point" <|
            equal "" ""
        , test "harbors are 7" <|
            equal "" ""
        , test "harbors are set at correct point" <|
            equal "" ""
        , test "robber stands center" <|
            equal "" ""
        , test "roads doesn't exist" <|
            equal "" ""
        , test "buildings doesn't exist" <|
            equal "" ""
        ]
