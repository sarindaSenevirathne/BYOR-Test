import ballerina/http;


configurable string dbUser = ?;
configurable string dbHost = ?;
configurable string dbDatabase = ?;
configurable int dbPort = ?;
configurable string dbPassword = ?;

service / on new http:Listener(9090) {

  
  
    resource function get greeting() returns int|error {
        // Send a response back to the caller.
      
        return dbPort;
    }
}
