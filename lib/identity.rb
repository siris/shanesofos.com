# Make some identities
class Identity
  attr_accessor :name, :professions

  def initialize(give_name, professions)
    @name = give_name
    @professions = professions
  end

  def whoami
    puts "My name is #{@name}. " +
         "I am an enthusiastic #{@professions.join(', ')}."
  end
end
