(*
   Decode a run-length encoded list. (medium)
   Given a run-length code list generated as specified in the previous problem,
   construct its uncompressed version.
*)

type 'a rle =
    | One of 'a
    | Many of int * 'a;;

let decode list =
  let rec add_many n x acc =
      if n = 0 then acc
      else add_many (n-1) x (x :: acc) in
  let rec iter acc = function
      | [] -> acc
      | One x :: tl -> iter (x :: acc) tl
      | Many (n, x) :: tl -> iter (add_many n x acc) tl in
  List.rev (iter [] list);;


decode [Many (4,"a"); One "b"; Many (2,"c"); Many (2,"a"); One "d"; Many (4,"e")];;

(*
   - : string list =
   ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"]
*)

decode [One "a"];;

decode [Many (3, "bb")];;

decode [];;
