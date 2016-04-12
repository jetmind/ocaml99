(*
  Create a list containing all integers within a given range. (easy)
  If first argument is smaller than second, produce a list in decreasing
  order.
*)

let rec range a b =
  let incr = if a > b then (-1) else 1 in
  if a = b then [a]
  else a :: (range (a + incr) b);;

range 4 9;;
(* - : int list = [4; 5; 6; 7; 8; 9] *)
range 9 4;;
(* - : int list = [9; 8; 7; 6; 5; 4] *)

