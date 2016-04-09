(*
  Remove the K'th element from a list. (easy)
  The first element of the list is numbered 0, the second 1,..
*)

let rec remove_at n = function
  | [] -> []
  | x :: xs -> if n = 0 then xs else x :: remove_at (n-1) xs;;

remove_at 1 ["a";"b";"c";"d"];;
(* - : string list = ["a"; "c"; "d"] *)

remove_at 2 [1;2;3;4;5;6];;
remove_at 0 [1];;
remove_at 25 [2;3];;
remove_at (-2) [1;2;3;4;5];;
