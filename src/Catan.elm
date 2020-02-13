module Catan exposing (main)

import Browser
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
type alias Model
    = {}


init : () -> (Model, Cmd Msg)
init _ =
    ( {}
    , Cmd.none
    )



-- UPDATE
type Msg
    = Dummy


update : Msg -> Model -> (Model, Cmd Msg)
update msg _ =
    case msg of
        Dummy ->
            ({}, Cmd.none)



-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW
view : Model -> Html Msg
view _ =
    text "Catan"
