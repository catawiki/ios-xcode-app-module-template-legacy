import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_moduleName___InteractorSpec: QuickSpec {
    override func spec() {
    var subject: ___VARIABLE_moduleName___Interactor!
        var output: ___VARIABLE_moduleName___InteractingOutputMock!
        var api: CatawikiApiTypeMock!

        let subjectWithUser: (UserInfo) -> Void = { user in
            api = CatawikiApiTypeMock()
            subject = ___VARIABLE_moduleName___Interactor(api: api, user: user)
            output = ___VARIABLE_moduleName___InteractingOutputMock()
            subject.output = output
        }

        afterEach {
            subject = nil
            output = nil
            api = nil
        }
    }
}
