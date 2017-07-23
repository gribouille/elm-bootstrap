module TestApp exposing (..)

import Expect
import Test exposing (Test, describe, test)
import App

data1 : App.Model
data1 = 
  [ App.Todo 1 "task 1" App.InProgress
  , App.Todo 2 "task 2" App.Done
  , App.Todo 3 "task 3" App.InProgress
  ] 

data2 : App.Model
data2 = 
  [ App.Todo 1 "task 1" App.InProgress
  , App.Todo 2 "task 2" App.Done
  , App.Todo 3 "task 3" App.Done
  ] 


suite : Test
suite =
  describe "App module"
    [ describe "App.update" 
          [ test "Toggle" <| 
            \_ -> 
              let
                res = App.update (App.Toggle 3) data1
              in
                Expect.equalLists data2 res
          , test "Delete" <| 
            \_ -> 
              let
                res = App.update (App.Delete 3) data1
              in
                Expect.equal 2 (List.length res)
          ]
    , describe "toggleStatus"
        [ test "InProgress" <|
          \_ -> Expect.equal App.Done (App.toggleStatus App.InProgress)
        , test "Done" <|
          \_ -> Expect.equal App.InProgress (App.toggleStatus App.Done) 
        ]
    ]
