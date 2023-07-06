Feature:

Scenario:
    * def text = 'hello <one> world <two> bye'
    * print 'before',text
    * replace text
      | token | value   |
      | one   | '<cruel>' |
      | two   | 'good'  |
    
    # * match text == 'hello cruel world good bye'
    * print 'after',text
    * replace text
      | token | value   |
      | cruel   | 'bad' |
      | two   | 'good'  |

     * print 'after',text

     * replace text
      | token | value   |
      | 'bad'   | 'cruel' |
      | two   | 'good'  |

     * print 'after',text

    Scenario: table non-default placeholder

        * def text = 'hello "one" world ##two## bye $(forever)'
        
        * replace text
            | token   | value   |
            | "one"  | 'cruel' |
            | ##two## | 'good'  |
            | $(forever) | 'never come back'  |
        
        * match text == 'hello cruel world good bye never come back'
        * print 'text',text