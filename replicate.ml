(* Replicate the elements of a list a given number of times. (medium) *)

let rec replicate list n =
  let rec sublist item acc n =
    if n = 0 then acc
    else sublist item (item :: acc) (n-1) in
  match list with
  | [] -> []
  | x :: xs -> (sublist x [] n) @ (replicate xs n);;

replicate ["a";"b";"c"] 3;;
(* - : string list = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"] *)

replicate [] 1;;
replicate ["a";"b"] 1;;
replicate ["a";"b"] 0;;
