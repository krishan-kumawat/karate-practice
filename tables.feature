Feature:

Scenario:
    * def Bob = {first :'hello'}
    * table cats
    | name   | age |
    | Bob.first  | 2   |
    | 'Wild' | 4   |
    | 'Nyan' | 3   |
  
#   * match cats == [{name: 'Bob', age: 2}, {name: 'Wild', age: 4}, {name: 'Nyan', age: 3}]
  * print cats

Scenario:
    * def one = 'hello'
    * def two = { baz: 'world' }
    * table json
      | foo     | bar            |
      | one     | { baz: 1 }     |
      | two.baz | ['baz', 'ban'] |
    * match json == [{ foo: 'hello', bar: { baz: 1 } }, { foo: 'world', bar: ['baz', 'ban'] }]

Scenario:
    * set search
  | path       |       a   | b      | c       |
  | name.first | 'John'   | 'Jane' |         |
  | name.last | 'Smith'  | 'Doe'  | 'Waldo' |
  | age        | 20       |        |         |

# * match search[0] == { name: { first: 'John', last: 'Smith' }, age: 20 }
# * match search[1] == { name: { first: 'Jane', last: 'Doe' } }
# * match search[2] == { name: { last: 'Waldo' } }
* print 'search',search[0]