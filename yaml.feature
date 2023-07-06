Feature:

Scenario:
    * text foo =
    """
    name: John
    input:
      id: 1
      subType: 
        name: Smith
        deleted: false
    """
  # yaml to json type conversion  
  * yaml foo = foo
  * print 'yaml',foo
  * match foo ==
    """
    {
      name: 'John',
      input: { 
        id: 1,
        subType: { name: 'Smith', deleted: false }    
      }
    }
    """
   * json foo = foo
  * print 'yaml',foo 