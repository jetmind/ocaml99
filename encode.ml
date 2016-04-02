(* Run-length encoding of a list *)

let encode l =
  let rec collect count acc = function
    | [] -> acc
    | [x] -> (count + 1, x) :: acc
    | a :: (b :: _ as tail) ->
      if a = b then collect (count + 1) acc tail
      else collect 0 ((count + 1, a) :: acc) tail in
  List.rev (collect 0 [] l);;


encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
(* - : (int * string) list =
 * [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")] *)

encode [];;
