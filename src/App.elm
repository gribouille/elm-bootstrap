module App exposing (..)

import Html as H
import Html.Attributes as HA
import Html.Events as HE



type alias Model = List Todo

type alias Todo =
  { id: TodoId
  , content: String
  , status: Status
  }

type alias TodoId = Int

type Status = InProgress | Done

type Msg 
  = Toggle TodoId
  | Delete TodoId


update : Msg -> Model -> Model
update msg = case msg of 
  (Toggle id) -> List.map (\x -> 
    if x.id == id then {x | status = toggleStatus x.status} 
    else x )
  (Delete id) -> List.filter ((/=) id << (.id))


view : Model -> H.Html Msg
view model = 
  H.table 
    [ HA.class "todolist" ]
    <| List.map viewTodo model


viewTodo : Todo -> H.Html Msg
viewTodo todo = 
  let 
    cls = if todo.status == Done then " done" else ""
  in
    H.tr [HA.class "todo"] 
      [ H.td [HA.class ("content" ++ cls)] [H.text todo.content]
      , H.td [HA.class "status"] 
          [ H.button [HE.onClick (Toggle todo.id)] [viewStatus todo.status] ]
      , H.td [HA.class "delete"] 
          [ H.button [HE.onClick (Delete todo.id)][H.text "✖"] ]
      ]


viewStatus : Status -> H.Html msg
viewStatus s = case s of 
  InProgress -> H.span [HA.class "inprogress"] [H.text "□"]
  Done       -> H.span [HA.class "done"] [H.text "▣"]


toggleStatus : Status -> Status
toggleStatus s = case s of InProgress -> Done
                           Done       -> InProgress