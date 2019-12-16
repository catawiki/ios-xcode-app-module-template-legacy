import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_moduleName___ViewControllerSpec: QuickSpec {
    override func spec() {
        var subject: ___VARIABLE_moduleName___ViewController!
        var presenter: ___VARIABLE_moduleName___PresentingMock!

        beforeEach {
            subject = ___VARIABLE_moduleName___ViewController()
            presenter = ___VARIABLE_moduleName___PresentingMock()
            subject.presenter = presenter
        }

        afterEach {
            subject = nil
            presenter = nil
        }
    }
}
