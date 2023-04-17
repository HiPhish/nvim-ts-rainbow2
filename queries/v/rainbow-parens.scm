(parenthesized_expression
	"(" @opening
	")" @closing) @container

(type_cast_expression
	"(" @opening
	")" @closing) @container

(special_argument_list
	"(" @opening
	")" @closing) @container

(comptime_selector_expression
	"(" @opening
	")" @closing) @container

(parameter_list
	"(" @opening
	")" @closing) @container

(argument_list
	"(" @opening
	")" @closing) @container

(multi_return_type
	"(" @opening
	")" @closing) @container

(type_only_parameter_list
	"(" @opening
	")" @closing) @container

(const_declaration
	"(" @opening
	")" @closing) @container

(fixed_array_type
	"[" @opening
	"]" @closing) @container

(array_type
	"[" @opening
	"]" @closing) @container

(exposed_variables_list
	"[" @opening
	"]" @closing) @container

(index_expression
	"[" @opening
	"]" @closing) @container

(slice_expression
	"[" @opening
	"]" @closing) @container

(attribute_declaration
	"[" @opening
	"]" @closing) @container

(literal_value
	"{" @opening
	"}" @closing) @container

(map
	"{" @opening
	"}" @closing) @container

(empty_literal_value
	"{" @opening
	"}" @closing) @container

(block
	"{" @opening
	"}" @closing) @container

(struct_field_declaration_list
	"{" @opening
	"}" @closing) @container

(enum_member_declaration_list
	"{" @opening
	"}" @closing) @container

(interface_spec_list
	"{" @opening
	"}" @closing) @container

(import_symbols
	"{" @opening
	"}" @closing) @container

(match_expression
	"{" @opening
	"}" @closing) @container

(select_expression
	"{" @opening
	"}" @closing) @container
