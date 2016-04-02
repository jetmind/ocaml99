(* Write a function last : 'a list -> 'a option
 * that returns the last element of a list *)

(* first attempt *)
let rec last list =
  match list with
  | [] -> None
  | head :: [] -> Some head
  | head :: tail -> last tail;;


(* second attempt *)
let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: xs -> last xs;;

last [ "a" ; "b" ; "c" ; "d" ];;
(* - : string option = Some "d" *)

last [];;
(* - : 'a option = None *)
