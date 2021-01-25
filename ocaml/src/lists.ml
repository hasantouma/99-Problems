(* 1 *)
(* Write a function last : 'a list -> 'a option that returns the last element of a list. (easy) *)

let last (lst : 'a list) : 'a option =
  let rec last lst =
    match lst with
    | [] -> None
    | [x] -> Some x
    | _ :: t -> last t
  in last lst


(* 2 *)
(* Find the last but one (last and penultimate) elements of a list. (easy) *)

let last_two (lst : 'a list) : ('a * 'a) option =
  let rec last_two lst =
    match lst with
    | [] |[_] -> None
    | [h1; h2] -> Some(h1, h2)
    | _ :: t -> last_two t
  in last_two lst


(* 3 *)
(* Find the k'th element of a list. (easy) *)

let at (n : int) (lst : 'a list) : 'a option =
  let rec at idx lst =
    match lst with
    | [] -> None
    | h :: t -> if idx = n then Some h else at (idx + 1) t
  in at 1 lst
