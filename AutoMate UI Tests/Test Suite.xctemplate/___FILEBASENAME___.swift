//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import XCTest
import AutoMate

class ___FILEBASENAMEASIDENTIFIER___: AppUITestCase {

    // MARK: Arrange View Objects
    lazy var myReusableView1: MyReusableView = MyReusableView(in: self.app)

    // MARK: Set up
    // Called once before whole class
    override class func setUp() {
        // Put setup code here.
        super.setUp()
    }

    // Called before each test method
    override func setUp() {
        super.setUp()
        // Put setup code here.
        TestLauncher.configure(app, withOptions: []).launch()
    }

    // MARK: Tear down
    // Called once after all tests are run
    override class func tearDown() {
        // Put teardown code here.
        super.tearDown()
    }

    // Called once after each test
    override func tearDown() {
        // Put teardown code here.
        super.tearDown()
    }

    // MARK: Tests
    func testMethod1() {
        // Put your test code here.
    }

    func testMethod2() {
        // Put your test code here.
    }

    // MARK: Helpers
    func localMethod() {
        // Put a reusable code here.
    }
}
