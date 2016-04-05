(* Modified run-length encoding. (easy)
 * Modify the result of the previous problem in such a way that if an element
 * has no duplicates it is simply copied into the result list. Only elements
 * with duplicates are transferred as (N E) lists.
 * Since OCaml lists are homogeneous, one needs to define a type to hold both
 * single elements and sub-lists *)

type 'a rle =
    | One of 'a
    | Many of int * 'a;;

let encode l =
  let make_run l =
    let run_len = List.length l in
    if run_len > 1 then Many (run_len, List.hd l)
    else One (List.hd l) in
  let rec collect acc result = function
    | [] -> result
    | [x] -> make_run (x :: acc) :: result
    | x :: (y :: _ as tail) ->
      if x = y then collect (x :: acc) result tail
      else collect [] (make_run (x :: acc) :: result) tail in
  List.rev (collect [] [] l);;

encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
(* - : string rle list = *)
(* [Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d"; Many (4, "e")] *)
