import ballerina/http;


configurable string test1 = ?;
configurable string test2 = ?;

service / on new http:Listener(9090) {

  
  
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name+test1+test2;
    }
}
