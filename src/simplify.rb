require_relative "simplify/replace_shared_strings"
require_relative "simplify/replace_named_references"
require_relative "simplify/replace_table_references"
require_relative "simplify/replace_ranges_with_array_literals"
require_relative "simplify/inline_formulae"
require_relative "simplify/map_formulae_to_values"
require_relative "simplify/replace_indirects_with_references"
require_relative "simplify/replace_offsets_with_references"
require_relative "simplify/replace_cell_addresses_with_references"
require_relative "simplify/replace_column_with_column_number"
require_relative "simplify/simplify_arithmetic"
require_relative "simplify/identify_dependencies"
require_relative "simplify/remove_cells"
require_relative "simplify/count_formula_references"
require_relative "simplify/identify_repeated_formula_elements"
require_relative "simplify/replace_common_elements_in_formulae"
require_relative "simplify/replace_arrays_with_single_cells"
require_relative "simplify/replace_values_with_constants"
require_relative "simplify/sort_into_calculation_order"
require_relative "simplify/replace_arithmetic_on_ranges"
require_relative "simplify/wrap_formulae_that_return_arrays_and_are_not_in_arrays"
require_relative "simplify/replace_string_join_on_ranges"
require_relative "simplify/emergency_array_formula_replace_indirect_bodge.rb"
require_relative "simplify/replace_transpose_function"
require_relative "simplify/replace_references_to_blanks_with_zeros"
require_relative "simplify/fix_subtotal_of_subtotals"
