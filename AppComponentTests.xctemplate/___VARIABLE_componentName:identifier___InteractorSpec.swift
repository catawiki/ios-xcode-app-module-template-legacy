import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_componentName___InteractorSpec: QuickSpec {
    override func spec() {
    var subject: ___VARIABLE_componentName___Interactor!
        var output: ___VARIABLE_componentName___InteractingOutputMock!
        var api: CatawikiApiTypeMock!

        let subjectWithUser: (UserInfo) -> Void = { user in
            api = CatawikiApiTypeMock()
            subject = ___VARIABLE_componentName___Interactor(api: api, user: user)
            output = ___VARIABLE_componentName___InteractingOutputMock()
            subject.output = output
        }

        afterEach {
            subject = nil
            output = nil
            api = nil
        }
    }
}
