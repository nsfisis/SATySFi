open Types

type t

val empty : t

val to_list : t -> (var_name * type_struct) list

val from_list : (var_name * type_struct) list -> t

val add : t -> var_name -> type_struct -> t

val find : t -> var_name -> type_struct

val get_range_from_type : type_struct -> code_range

val overwrite_range_of_type : type_struct -> code_range -> type_struct

val erase_range_of_type : type_struct -> type_struct

val find_in_type_struct : type_variable_id -> type_struct -> bool

val find_in_type_environment : type_variable_id -> t -> bool

val make_forall_type : type_struct -> t -> type_struct

val string_of_type_environment : t -> string -> string

val string_of_control_sequence_type : t -> string