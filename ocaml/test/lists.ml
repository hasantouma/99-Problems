open OUnit2
open OC99.Lists

let test_last ctxt =
  assert_equal (Some "d") @@ (last [ "a" ; "b" ; "c" ; "d" ]);
  assert_equal None @@ (last [])

let test_last_two ctxt =
  assert_equal (Some ("c", "d")) @@ (last_two [ "a" ; "b" ; "c" ; "d" ]);
  assert_equal None @@ (last_two [ "a" ])

let test_at ctxt =
  assert_equal (Some "c") @@ (at 3 [ "a" ; "b"; "c"; "d"; "e" ]);
  assert_equal (Some "a") @@ (at 1 [ "a" ; "b"; "c"; "d"; "e" ]);
  assert_equal (Some "e") @@ (at 5 [ "a" ; "b"; "c"; "d"; "e" ]);
  assert_equal None @@ (at 3 [ "a" ])

let suite =
  "list" >::: [
    "test_last" >:: test_last;
    "test_last_two" >:: test_last_two;
    "test_at" >:: test_at
  ]

let _ = run_test_tt_main suite

