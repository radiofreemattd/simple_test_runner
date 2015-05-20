require_relative '../test_helper'
require_relative 'person'

def before_each_test
  @person = Person.new
  # do any custom setup here
end

def after_each_test
  @person = nil
  # do any custom teardown here
end

describe 'A New Person' do
  it 'Should have a default first_name of "Matt" if not otherwise set' do
    are_equal? @person.first_name, 'Matt'
  end

  it 'Should support creation of a custom name' do
    @another_person = Person.new first_name: 'Ryan'
    are_equal? @another_person.first_name, 'Ryan'
  end
end

describe 'Your tests...' do
  it 'are just Ruby, so anything that resolves to true or false works' do
    'Yankees' == 'The best team in baseball'
  end

  it 'is true' do
    true
  end

  it 'is false' do
    false
  end
end
