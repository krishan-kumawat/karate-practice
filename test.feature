Feature:

Scenario:
    * url 'https://httpbin.org/anything'
    * request {mykey  : 'myValue'}
    * method post
    * print 'this is response',response

Scenario:
    * url 'https://httpbin.org/anything'
    * request {mykey  : 'myValue'}
    * method post
    * status 200
    * match response.json =={mykey :'myValu'}

Scenario:
    * url 'https://dummyjson.com/products'
    # * request {mykey  : 'myValue'}
    * method get
    * status 200
    * print "this is dummyjson response", response
    # * match response.json =={mykey :'myValu'}   