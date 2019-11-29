import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_moduleName___PresenterSpec: QuickSpec {
    override func spec() {
        var subject: ___VARIABLE_moduleName___Presenter!
        var view: ___VARIABLE_moduleName___ViewableMock!
        var interactor: ___VARIABLE_moduleName___InteractingMock!
        var router: ___VARIABLE_moduleName___RoutingMock!
        
        beforeEach {
            subject = ___VARIABLE_moduleName___Presenter()
            view = ___VARIABLE_moduleName___ViewableMock()
            interactor = ___VARIABLE_moduleName___InteractingMock()
            router = ___VARIABLE_moduleName___RoutingMock()
            
            subject.router = router
            subject.interactor = interactor
            subject.view = view
        }
        
        afterEach {
            subject = nil
            view = nil
            router = nil
            interactor = nil
        }
    }
}
