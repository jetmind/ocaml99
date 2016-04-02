(* Flatten a nested list structure *)

type 'a node =
  | One of 'a
  | Many of 'a node list;;

let rec flatten list =
  let rec aux acc = function
    | [] -> acc
    | One v :: tl -> aux (v :: acc) tl
    | Many vs :: tl -> aux (aux acc vs) tl in
  List.rev (aux [] list);;

flatten [ One "a" ; Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ] ];;
(* - : string list = ["a"; "b"; "c"; "d"; "e"] *)
