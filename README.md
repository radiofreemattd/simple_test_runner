## Simple Test Runner

Inspired as part of an effort to better understand procs and lambdas in Ruby,
and in an effort to prettify my simple script tests without having to resort
to a complete testing suite.

See here for a related perspective on testing:
http://articles.coreyhaines.com/posts/dont-always-need-a-testing-framework/

There is currently only one example of a matcher, but use of matchers is
completely optional - as long as the expression representing your test
resolves to a boolean value, the script will work. In other words, the
matcher is really just there to provide a slightly more English-expressive
abstration of the underlying test logic. Use or don't as is your preference.

If you want to write additional matchers, a great (and very readable) source
of ideas is Minitest, maintained by the Seattle Ruby Brigade
(http://www.seattlerb.org/). Specifically, I would like at their assertions
library, which show the underlying Ruby being used:
https://github.com/seattlerb/minitest/blob/master/lib/minitest/assertions.rb
