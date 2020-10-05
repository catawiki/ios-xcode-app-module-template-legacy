import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_componentName___ComponentSpec: QuickSpec {
    class ___VARIABLE_componentName___ComponentUnwrapper {
        private let componentView: UIViewController
        
        var view: ___VARIABLE_componentName___ViewController {
            return componentView as! ___VARIABLE_componentName___ViewController
        }
        
        var presenter: ___VARIABLE_componentName___Presenter {
            return view.presenter as! ___VARIABLE_componentName___Presenter
        }
        
        var interactor: ___VARIABLE_componentName___Interactor {
            return presenter.interactor as! ___VARIABLE_componentName___Interactor
        }
        
        var router: ___VARIABLE_componentName___Router {
            return presenter.router as! ___VARIABLE_componentName___Router
        }
        
        init(componentView: UIViewController) {
            self.componentView = componentView
        }
    }
    
    override func spec() {
        var view: ___VARIABLE_componentName___ViewController!
        var presenter: ___VARIABLE_componentName___Presenter!
        var interactor: ___VARIABLE_componentName___Interactor!
        var router: ___VARIABLE_componentName___Router!
        
        beforeEach {
            let rootViewController = ___VARIABLE_componentName___Component().assemble()
            let component = ___VARIABLE_componentName___ComponentUnwrapper(componentView: rootViewController)
            
            view = component.view
            presenter = component.presenter
            interactor = component.interactor
            router = component.router
        }
        
        afterEach {
            view = nil
            presenter = nil
            interactor = nil
            router = nil
        }
        
        it("sets up the router dependencies") {
            expect(router.presenter) === presenter
            expect(router.rootViewController) === view
        }
        
        it("sets up the presenter dependencies") {
            expect(presenter.interactor) === interactor
            expect(presenter.router) === router
            expect(presenter.view) === view
        }
        
        it("sets up the interactor dependencies") {
            expect(interactor.output) === presenter
        }
        
        it("sets up the view dependencies") {
            expect(view.presenter) === presenter
        }
    }
}
