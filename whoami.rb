#!/usr/bin/env ruby

# Make some identities
class Identity
  def initialize(give_name, professions)
    @name = give_name
    @professions = professions
  end

  def whoami
    puts "My name is #{@name}. " +
         "I am an enthusiastic #{@professions.join(', ')}."
  end
end

person = Identity.new('Shane R. Sofos',
                      ['Site Reliability Engineer',
                       'Systems Engineer',
                       'Penguin Wrangler',
                       'Rubyist',
                       'GNU Herder',
                       'Midgardian',
                       'Westerosi',
                       'and Child of Ilúvatar'])
person.whoami
