import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_componentName___ViewControllerSpec: QuickSpec {
    override func spec() {
        var subject: ___VARIABLE_componentName___ViewController!
        var presenter: ___VARIABLE_componentName___PresentingMock!

        beforeEach {
            subject = ___VARIABLE_componentName___ViewController()
            presenter = ___VARIABLE_componentName___PresentingMock()
            subject.presenter = presenter
        }

        afterEach {
            subject = nil
            presenter = nil
        }
    }
}
