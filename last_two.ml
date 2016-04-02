(* Find the last but one (last and penultimate) elements of a list. *)

let rec last_two = function
  | [] | [_] -> None
  | [prev; last] -> Some (prev, last)
  | _ :: tail -> last_two tail;;

last_two [ "a" ; "b" ; "c" ; "d" ];;
(* - : (string * string) option = Some ("c", "d") *)

last_two [ "a" ];;
(* - : (string * string) option = None *)

