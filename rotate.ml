(* Rotate a list N places to the left. (medium) *)

#use "split.ml";;

let rotate list n =
  let split_at = if n >= 0 then n else List.length list + n in
  let (l1, l2) = split list split_at in
  l2 @ l1;;

rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] 3;;
(* - : string list = ["d"; "e"; "f"; "g"; "h"; "a"; "b"; "c"] *)
rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] (-2);;
(* - : string list = ["g"; "h"; "a"; "b"; "c"; "d"; "e"; "f"] *)

rotate [1;2;3] 0;;
rotate [] 1;;
rotate [1;2;3;4;5;6;7] (-4);;
rotate [1;2;3;4;5;6;7] 3;;
