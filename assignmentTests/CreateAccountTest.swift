//
//  CreateAccountTest.swift
//  assignmentTests
//
//  Created by Anshul Mahipal on 08/08/22.
//

import XCTest
@testable import assignment

class CreateAccountTest: XCTestCase {
    
    var createAccountController: CreateAccountViewController!
    private var userData: UserData!

    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "CreateAccountViewController") as! CreateAccountViewController
        createAccountController = vc
            _ = createAccountController.view
        createUserData()
        continueAfterFailure = false
    }

    func testNotNil() {
        XCTAssertNotNil(createAccountController)
        XCTAssertNotNil(userData)
    }
    
    func testEmailValidation() {
        XCTAssertTrue(createAccountController.isEmailValid(userData.email))
    }
    
    func testPasswordStrength() {
        XCTAssertTrue(createAccountController.isPasswordStrongEnough(userData.password))
        
    }
    
    func testDataValidation() {
        XCTAssertTrue(createAccountController.isDataValid(userData))
    }
    
    private func createUserData() {
        userData = UserData(
            firstName: "Anshul",
            lastName: "Mahipal",
            email: "testEmail@gmail.com",
            username: "anshulmahipal",
            password: "password")
    }
    

}
