DISPLAY_WIDTH = 70
DISPLAY_TITLE_CHAR = '='

def describe(feature, &block)
  puts "#{ DISPLAY_TITLE_CHAR * (DISPLAY_WIDTH + 8) }"
  puts "#{ feature.upcase }"
  block.call
end

def it(description, &block)
  before_each_test # override for custom pre-test setup behavior

  puts block.call ? pass_message(description) :
                    fail_message(description)

  after_each_test # override for custom post-test teardown behavior
end

# private - no need to call directly

def pass_message(description, message = 'PASSED')
  "  \033[32m#{ description.ljust(DISPLAY_WIDTH) }#{ message } \u2713\033[0m"
end

def fail_message(description, message = 'FAILED')
  "  \033[31m#{ description.ljust(DISPLAY_WIDTH) }#{ message } \u2717\033[0m"
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
