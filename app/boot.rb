RubyVM::InstructionSequence.compile_option = {
    :tailcall_optimization => true,
    :trace_instruction => false
}

require_relative 'factory/format_bundle_factory'
require_relative 'presenter/format_bundle_presenter'
require_relative 'model/format_bundle'
require_relative 'line_handler'