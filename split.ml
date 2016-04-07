(*
  Split a list into two parts; the length of the first part is given. (easy)
  If the length of the first part is longer than the entire list, then the first
  part is the list and the second part is empty
*)

let split list n =
  let rec split' n acc = function
    | [] -> (List.rev acc, [])
    | x :: xs as l ->
      if n = 0 then (List.rev acc, l)
      else split' (n - 1) (x :: acc) xs in
  split' n [] list;;

split ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
(* - : string list * string list = *)
(* (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"]) *)

split ["a";"b";"c";"d"] 5;;
(* - : string list * string list = (["a"; "b"; "c"; "d"], []) *)

split [] 2;;
split ["a";"2"] 0;;
