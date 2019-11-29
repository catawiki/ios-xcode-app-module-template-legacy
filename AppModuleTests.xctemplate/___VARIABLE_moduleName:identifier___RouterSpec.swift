import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_moduleName___RouterSpec: QuickSpec {
    override func spec() {
        var subject: ___VARIABLE_moduleName___RouterRouter!
        var output: ___VARIABLE_moduleName___ModuleOutputMock!
        
        beforeEach {
            output = ___VARIABLE_moduleName___ModuleOutputMock()
            subject = ___VARIABLE_moduleName___Router()
            subject.output = output
        }
        
        afterEach {
            subject = nil
            output = nil
        }
    }
}
