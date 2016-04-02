(* Find the k'th element of a list *)

let rec at k list =
  match list with
  | [] -> None
  | hd :: tl ->
    if k = 1 then Some hd
    else at (k - 1) tl;;

at 3 [ "a" ; "b"; "c"; "d"; "e" ];;
(* - : string option = Some "c" *)

at 3 [ "a" ];;
(* - : string option = None *)
