import ballerina/http;


configurable string dbUser = ?;
configurable string dbHost = ?;
configurable string dbDatabase = ?;
configurable int dbPort = ?;
configurable string dbPassword = ?;

service / on new http:Listener(9090) {

  
  
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name+dbUser+dbHost;
    }
}
