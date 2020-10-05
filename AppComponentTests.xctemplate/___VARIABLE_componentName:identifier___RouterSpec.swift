import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_componentName___RouterSpec: QuickSpec {
    override func spec() {
        var subject: ___VARIABLE_componentName___Router!
        var output: ___VARIABLE_componentName___ComponentOutputMock!
        
        beforeEach {
            output = ___VARIABLE_componentName___ComponentOutputMock()
            subject = ___VARIABLE_componentName___Router()
            subject.output = output
        }
        
        afterEach {
            subject = nil
            output = nil
        }
    }
}
