let square x = x * x

let cat a b = a ^ " " ^ b

let rec range lo hi =
  if lo > hi then []
  else lo :: range (lo + 1) hi

let print_list collection =
  List.iter (Printf.printf "%i") collection |> print_newline

let u = [1; 2; 3; 4]

let rec len collection =
  match collection with
  | [] -> 0
  | _ :: i -> 1 + len i

let () =
  square 50 |> string_of_int |> print_endline;
  cat "Hello," "World!" |> print_endline;
  print_endline "Hello, World!";
  print_list (range 2 5);
  print_list u;

  let u_size = len u in
  Printf.printf "Size of 'u' is %d\n" u_size;

  print_string "Your input: ";
  let user_input =
    read_line() in
    print_endline ("User input: " ^ user_input);

  let a = fun i -> i * i
  in
  print_endline ("A = " ^ (Int.to_string (a 50)))
