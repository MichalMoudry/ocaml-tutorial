let square x = x * x

let cat a b = a ^ " " ^ b

let rec range lo hi =
  if lo > hi then []
  else lo :: range (lo + 1) hi

let () =
  square 50 |> string_of_int |> print_endline;
  cat "Hello," "World!" |> print_endline;
  print_endline "Hello, World!";
  List.iter (Printf.printf "%d") (range 2 5);
  print_newline()
