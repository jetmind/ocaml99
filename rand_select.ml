(*
  Extract a given number of randomly selected elements from a list. (medium)
  The selected items shall be returned in a list. We use the Random module but
  do not initialize it with Random.self_init for reproducibility
*)

let rand_select list n =
  let len = List.length list in
  let rec item_at list pos =
    match list with
    | [] -> assert false
    | x :: xs -> if pos = 0 then x else item_at xs (pos-1) in
  let rec rand_list acc n =
    if n = 0 then acc
    else rand_list (Random.int len :: acc) (n-1) in
  List.map (item_at list) (rand_list [] n);;

rand_select ["a";"b";"c";"d";"e";"f";"g";"h"] 3;;
