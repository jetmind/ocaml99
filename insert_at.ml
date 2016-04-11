(*
  Insert an element at a given position into a list. (easy)
  Start counting list elements with 0. If the position is larger or equal to the
  length of the list, insert the element at the end. (The behavior is
  unspecified if the position is negative.
*)

let rec insert_at elem n = function
  | [] -> [elem]
  | x :: xs as l ->
    if n = 0 then elem :: l
    else x :: insert_at elem (n-1) xs;;


insert_at "alfa" 1 ["a";"b";"c";"d"];;
(* - : string list = ["a"; "alfa"; "b"; "c"; "d"] *)
insert_at "alfa" 3 ["a";"b";"c";"d"];;
(* - : string list = ["a"; "b"; "c"; "alfa"; "d"] *)
insert_at "alfa" 4 ["a";"b";"c";"d"];;
(* - : string list = ["a"; "b"; "c"; "d"; "alfa"] *)
