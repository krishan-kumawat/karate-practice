Feature:

Scenario: 'testing xml with match'
    Given def cat = <cat><name>Billie</name><scores><score>2</score><score>5</score></scores></cat>
    # sadly, xpath list indexes start from 1
    Then match cat/cat/scores/score[2] == '5'
    # but karate allows you to traverse xml like json !!
    Then match cat.cat.scores.score[1] == '5'