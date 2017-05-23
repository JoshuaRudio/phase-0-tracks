# HTTP Requests
Here are some common HTTP status codes:
* 404 - This is the most common error that occurs. It means that the requested website is not available, or not found. It can occur when typos are made when entering a URL or if the requested site just does not exist.
* 401 - This is an unauthorized error meaning, to access the page, the user must be logged in with an authorized account.
* 403 - This is a forbidden error code. This means that although a user is logged in with an authorized account, the page is still inaccessible because the user does not have the proper access level to view the page.
* 503 - This means the server is unavailble. It may occur during a server crash, maintenance, overload, or if it is being attacked. The server will not sent the information for the site.
* 200 OK - This means it is all good and the server will send the requested information.
# Difference between GET and POST:
GET requests the server for the information needed to view the website. POST is used when a user is submitting information from the client to the server.
#### GET Requests:
* Retained in browser history
* Bookmarkable
* Have data length restrictions
* Should not be used when dealing with sensitive data like logins and passwords
* GET is only used for retrieving data from the server.
* When reloaded, will not trigger any alerts
#### POST Requests:
* Are NOT retained in browser history
* Are NOT bookmarkable
* No restrictions on data length
* When reloaded, it triggers an alert saying "Are you sure? All data will be resubmitted."

From what I took away from researching this, I understand that GET is used you want to view a certain website. The server sees the request and will send the pertaining data. POST is used when the user will submit information to the server, an example would be uploading a picture to instagram.
