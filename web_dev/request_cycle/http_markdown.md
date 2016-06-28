----------------------------------------
What are some common HTTP status codes?
- HTTP status codes are sent back by the server to record how the server handled the transaction.

Successful
- 200 OK : request has succeeded. Information returned with reponse is dependent on the method used in the request. e.g. GET an entity corresponding the requested resource is sent int he response

Redirection
- 300 Multiple Choices : The 300 status indicates that a resource has moved. Response will also include a list of locaitons from which the yser agebt cab select the most appropriate.

Client Error
- 404 Not Found : Requested resource was not found at the URL given, and the server has no idea how long for.

Server Error
- 503 Service Unavailable : Your web server is unable to handle your HTTP request at the time. There are a myriad of reasons why this can occur but the most common are:
server crash
server maintenance
server overload
server maliciously being attacked
a website has used up its allotted bandwidth
server may be forbidden to return the requested document
This is usually a temporary condition.

(http://www.restapitutorial.com/httpstatuscodes.html is a nice place to view all of the status codes)

----------------------------------------
What is the difference between a GET request and a POST request? When might each be used?

- GET is for retrieving data. It shouldn't have side effects; should be able to request the same URL over and over harmlessly. GET requests can be cahced, can remain in browser hisotry, can be bookmarked and shared, can be hacked. Use GET in AJAX environments

- POST submits data to be processed such as a data in an HTML form to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both. Use Post when dealing with sensitive data or when dealing with long requests.

----------------------------------------
What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
- Cookie is a small files of letters and numbers downloaded onto our computer when we access websites. It's like a virtual door key that unlocks computer's memory and allows websites to recognize us when returning to a site by opening doors to customized content or services. Cookies allows servers to deliver a page tailored to us. It can also contain script that remembers our data each time we visit a site.

