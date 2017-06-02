path: tree/master
source: whoami.rb

Welcome
=======

Hi there and welcome to my personal site!

```ruby
#!/usr/bin/env ruby

class Identity
  def initialize(give_name, professions)
    @name = give_name
    @professions = professions
  end

  def whoami
    puts "My name is #{@name} and " \
         "I am an enthusiastic #{@professions.join(', ')}"
  end
end

person = Identity.new('Shane R. Sofos',
                      ['Site Reliability Engineer',
                       'Systems Engineer',
                       'Penguin Wrangler',
                       'GNU Herder',
                       'Midgardian',
                       'Westerosi',
                       'Child of Ilúvatar'])
person.whoami
```

Resume
------

For more information [check out my resume](./resume/README.md)!

Contact
-------

![QR-Code-Contact](img/qr-pid-contact.png)
