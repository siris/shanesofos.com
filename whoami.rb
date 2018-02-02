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
