(*
  Extract a slice from a list. (medium)
  Given two indices, i and k, the slice is the list containing the elements
  between the i'th and k'th element of the original list (both limits included).
  Start counting the elements with 0 (this is the way the List module numbers
  elements).
*)

let slice list start finish =
  let rec slice' list acc current =
    if current > finish then acc
    else match list with
      | [] -> acc
      | x :: xs ->
        if current < start then slice' xs acc (current + 1)
        else slice' xs (x :: acc) (current + 1) in
  List.rev (slice' list [] 0);;

slice ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 2 6;;
(* - : string list = ["c"; "d"; "e"; "f"; "g"] *)

slice ["a";"b";"c"] 0 0;;
slice ["a";"b";"c"] (-4) 0;;
slice ["a";"b";"c"] 0 109;;
slice ["a";"b";"c"] 0 (-1);;
slice ["a";"b";"c"] 2 4;;

