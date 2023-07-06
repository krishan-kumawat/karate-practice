Feature:

Scenario:
    * def dateStringToLong =
    """
    function(s) {
      var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
      var sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
      return sdf.parse(s).time; // '.getTime()' would also have worked instead of '.time'
    } 
    """
  * assert dateStringToLong("2016-12-24T03:39:21.081+0000") == 1482550761081

  * def timeLong = call dateStringToLong '2016-12-24T03:39:21.081+0000'
* assert timeLong == 1482550761081

# a better example, with a JSON argument
* def greeter = function(name){ return 'Hello ' + name.first + ' ' + name.last + '!' }
* def greeting = call greeter { first: 'John', last: 'Smith' }

# Scenario:
#     * def dateStringToLong =
#     """
#     function(s) {
#       var SimpleDateFormat = Java.type('javafiles.Demo');
#       var sdf = new SimpleDateFormat();
#       return sdf.data(s) // '.getTime()' would also have worked instead of '.time'
#     } 
#     """

#   * def timeLong = call dateStringToLong '2016-12-24T03:39:21.081+0000'
# * assert timeLong == '2016-12-24T03:39:21.081+0000'

# # a better example, with a JSON argument
# * def greeter = function(name){ return 'Hello ' + name.first + ' ' + name.last + '!' }
# * def greeting = call greeter { first: 'John', last: 'Smith' }