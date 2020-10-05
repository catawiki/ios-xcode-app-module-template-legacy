import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_componentName___PresenterSpec: QuickSpec {
    override func spec() {
        var subject: ___VARIABLE_componentName___Presenter!
        var view: ___VARIABLE_componentName___ViewableMock!
        var interactor: ___VARIABLE_componentName___InteractingMock!
        var router: ___VARIABLE_componentName___RoutingMock!
        
        beforeEach {
            subject = ___VARIABLE_componentName___Presenter()
            view = ___VARIABLE_componentName___ViewableMock()
            interactor = ___VARIABLE_componentName___InteractingMock()
            router = ___VARIABLE_componentName___RoutingMock()
            
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
