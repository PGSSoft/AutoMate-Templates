//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import XCTest
import AutoMate

// MARK: - ___FILEBASENAMEASIDENTIFIER___
open class ___FILEBASENAMEASIDENTIFIER___: BaseAppPage {

    // MARK: Elements
    open var exampleElement: XCUIElement {
        return view.buttons[Locators.exampleLocator]
    }

    // MARK: Actions
    open func doSomethingExample() {
        exampleElement.tap()
    }

    // MARK: Helpers
    open func isExampleElementAvailable() -> Bool {
        return exampleElement.exists
    }
}

// MARK: - IdentifiableByElement
extension ___FILEBASENAMEASIDENTIFIER___: IdentifiableByElement {

    public var identifingElement: XCUIElement {
        return exampleElement
    }
}

// MARK: - Locators
private extension ___FILEBASENAMEASIDENTIFIER___ {

    enum Locators: String, Locator {
        case exampleLocator = "exampleText"
    }
}
