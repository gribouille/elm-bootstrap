module Example exposing (model)

import Html
import App


todos : List String
todos = 
  [ "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  , "Vivamus eget enim sit amet nisl laoreet consectetur."
  , "Donec pharetra turpis id posuere aliquet."
  , "Phasellus mollis lectus ac porttitor ultricies."
  , "Nulla et neque at dui mattis pulvinar sit amet sit amet turpis."
  , "Vivamus et nisl pretium, blandit ex et, vehicula purus."
  , "Sed eget tortor ac sapien imperdiet tempus."
  , "In sit amet mauris ultrices, rhoncus turpis eget, egestas nulla."
  , "In in quam malesuada, tincidunt augue nec, blandit arcu."
  , "Duis tempus metus eget justo posuere placerat."
  , "Suspendisse laoreet ligula et mi interdum, et gravida mauris consectetur."
  , "Integer a quam vitae nisl condimentum commodo id eu risus."
  , "Integer finibus erat a lacinia aliquam."
  ]

model : App.Model
model = List.indexedMap (\i x -> App.Todo i x App.InProgress) todos


main : Program Never App.Model App.Msg 
main =
  Html.beginnerProgram
    { model = model
    , view = App.view
    , update = App.update
    }
