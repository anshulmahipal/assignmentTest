//
//  SignInControllerTest.swift
//  assignmentTests
//
//  Created by Anshul Mahipal on 08/08/22.
//

import XCTest
@testable import assignment


class SignInControllerTest: XCTestCase {
    
    var viewController: SignInViewController!

    override func setUpWithError() throws {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
            viewController = vc
            _ = viewController.view
        continueAfterFailure = false
    }
    
   func testNotNil() {
        XCTAssertNotNil(viewController)
    }

    func testDataValidation() {
        XCTAssertTrue(viewController.isEnterDataIsValid(username: "username", password: "password"))
    }
    


}
