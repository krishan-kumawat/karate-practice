Feature:

Scenario:
# defining user information
Given def user = { name :'Alex', password :'pass'}
Then def lang = 'ln'
Then print 'user #(user)'
When def session = { name: '#(user.name)', locale: '#(lang)', sessionUser: '#(user)'  }
Then print 'session #(session)',session


Scenario:
    Given def user = <user><name>john</name></user>
And def lang = 'en'
When def session = <session><locale>#(lang)</locale><sessionUser>#(user)</sessionUser></session>
* print 'session xml',session