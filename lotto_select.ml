(*
  Lotto: Draw N different random numbers from the set 1..M. (easy)
  The selected numbers shall be returned in a list
*)

#use "range.ml";;
#use "rand_select.ml";;

let lotto_select n m = rand_select (range 1 m) n;;

lotto_select 6 49;;
(* - : int list = [10; 20; 44; 22; 41; 2] *)
