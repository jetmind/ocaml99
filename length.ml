(* Find the number of elements of a list *)

let rec length = function
  | [] -> 0
  | _ :: tail -> 1 + length tail;;

length [ "a" ; "b" ; "c"];;
(* - : int = 3 *)

 length [];;
(* - : int = 0 *)
