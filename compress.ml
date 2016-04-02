(* Eliminate consecutive duplicates of list elements *) 

let rec compress = function
  | a :: b :: tl ->
    if a = b then compress (b :: tl)
    else a :: compress (b :: tl)
  | other -> other;;

compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
(* - : string list = ["a"; "b"; "c"; "a"; "d"; "e"] *)
