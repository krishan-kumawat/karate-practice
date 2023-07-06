Feature:

Scenario: 'testing xml with match'
    Given def cat = <cat><name name="pname">Billie</name><scores><score>2</score><score>5</score></scores></cat>
    # sadly, xpath list indexes start from 1
    Then match cat/cat/scores/score[2] == '5'
    Then match cat //name[@name='pname'] == 'Billie'
    # but karate allows you to traverse xml like json !!
    Then match cat.cat.scores.score[1] == '5'
    * print 'the json name',cat.cat.name
    
Scenario: 'testing xml with match'
    * def cats = [{ name: 'Billie' }, { name: 'Bob' }]
    * match cats[1] == { name: 'Bob' }
    