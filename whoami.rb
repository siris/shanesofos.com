#!/usr/bin/env ruby

# Make some identities
class Identity
  def initialize(give_name, professions)
    @name = give_name
    @professions = professions
  end

  def whoami
    puts "Hello, my name is #{@name}! " +
         "I am an enthusiastic #{@professions.join(', ')}."
  end
end

person = Identity.new('Shane R. Sofos',
                      ['Site Reliability Engineer',
                       'Systems Engineer',
                       'Penguin Wrangler',
                       'GNU Herder',
                       'Midgardian',
                       'Westerosi',
                       'and Child of Ilúvatar'])
person.whoami
