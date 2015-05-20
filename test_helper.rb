DESC_WIDTH = 70
TITLE_CHAR = '='

# test-runner
def describe(feature_to_be_described, &block)
  puts
  puts "\033[1:30m#{ TITLE_CHAR * (DESC_WIDTH + 8)  }\033[0m"
  puts "\033[1:30m#{ feature_to_be_described        }\033[0m"
  block.call
  puts
end

def it(description_of_test, &block)
  before_each_test # override for custom pre-test setup behavior

  test_passed   = block.call
  test_passed ? _output_pass_message(description_of_test) :
                _output_fail_message(description_of_test)

  after_each_test # override for custom post-test teardown behavior
end

# private - do not call directly
def _output_pass_message(description_of_test, message = 'PASSED')
  puts "  \033[32m#{ description_of_test.ljust(DESC_WIDTH) }#{ message }\033[0m"
end

def _output_fail_message(description_of_test, message = 'FAILED')
  puts "  \033[31m#{ description_of_test.ljust(DESC_WIDTH) }#{ message }\033[0m"
end

# these should be overridden (if necessary) in your test file
def before_each_test
end

def after_each_test
end

# matchers
def are_equal?(object1, object2)
  object1 == object2
end
