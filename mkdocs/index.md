Welcome
=======

Hi there and welcome to my personal site!

My name is Shane R. Sofos. I am an enthusiastic Site Reliability Engineer, Systems Engineer, Penguin Wrangler, Rubyist, GNU Herder, Midgardian, Westerosi, and Child of Ilúvatar.

Code Sample
-----------

```ruby
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
```

```ruby
#!/usr/bin/env ruby

require_relative 'lib/identity'

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
```

Resume
------

For more information [check out my resume](./resume/README.md)!

Contact
-------

![QR-Code-Contact](img/qr-pid-contact.png)
