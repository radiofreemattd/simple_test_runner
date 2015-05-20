# person class
class Person
  attr_reader :first_name, :last_name, :age

  def initialize(args={})
    @first_name = args[:first_name] || 'Matt'
    @last_name  = args[:last_name]  || 'Dunn'
    @age        = args[:age]        || 43
  end
end
