(* Pack consecutive duplicates of list elements into sublists *)

let pack list =
  let rec collect what acc result_acc list =
    match list with
    | [] -> acc :: result_acc
    | hd :: tl ->
      if hd = what then
        collect hd (hd :: acc) result_acc tl
      else
        collect hd [] (acc :: result_acc) list in
  match list with
  | [] -> []
  | hd :: _ -> List.rev (collect hd [] [] list);;

pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
(* - : string list list =
 * [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"];
 *  ["d"; "d"]; ["e"; "e"; "e"; "e"]] *)
