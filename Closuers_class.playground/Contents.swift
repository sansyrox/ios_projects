import UIKit

class Firebase {
    
    func createUser (username: String, password: String, completion: (Bool, Int) -> Void ){
        // does something time consuming
        
        let isSuccess = true
        let userID = 123
        
        completion(isSuccess, userID)
        
    }
    
}


class MyApp {
    
    func registerButtonPressed() {
        let firebase = Firebase()
        
        firebase.createUser(username: "Angela", password: "123456") {
            (isSuccess: Bool, userID: Int) in
            
            print("registration is successful : \(isSuccess)")
            print("userID is: \(userID)")
        }
        
    }
    
    
    
    
}


let myAPP = MyApp()

myAPP.registerButtonPressed()
