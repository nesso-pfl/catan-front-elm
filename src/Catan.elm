module Catan exposing (main)

import Browser
import Catan.Core exposing (..)
import Html exposing (Html, text)



-- MAIN


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- MODEL


type alias Model =
    { panels : List Panel
    , harbors : List Harbor
    , robber : Point
    , roads : List Road
    , buildings : List Building
    , diceResult : Int
    , phase : Phase
    , turn : String
    , user : User
    , others : List User
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { panels = []
      , harbors = []
      , robber = { x = 0, y = 0 }
      , roads = []
      , buildings = []
      , diceResult = 0
      , phase = Dice
      , turn = ""
      , user =
            Self
                { id = ""
                , resources = []
                , cards = []
                }
      , others = []
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = Dummy


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Dummy ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view _ =
    text "Catan"
