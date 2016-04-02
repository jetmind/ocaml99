(* Reverse a list *)

let rev list =
  let rec rev' acc = function
    | [] -> acc
    | x :: xs -> rev' (x :: acc) xs in
  rev' [] list;;

rev ["a" ; "b" ; "c"];;
(* - : string list = ["c"; "b"; "a"] *)
