import Foundation
import Quick
import Nimble
@testable import Catawiki

class ___VARIABLE_moduleName___ModuleSpec: QuickSpec {
    class ___VARIABLE_moduleName___ModuleUnwrapper {
        private let moduleView: UIViewController
        
        var view: ___VARIABLE_moduleName___ViewController {
            return moduleView as! ___VARIABLE_moduleName___ViewController
        }
        
        var presenter: ___VARIABLE_moduleName___Presenter {
            return view.presenter as! ___VARIABLE_moduleName___Presenter
        }
        
        var interactor: ___VARIABLE_moduleName___Interactor {
            return presenter.interactor as! ___VARIABLE_moduleName___Interactor
        }
        
        var router: ___VARIABLE_moduleName___Router {
            return presenter.router as! ___VARIABLE_moduleName___Router
        }
        
        init(moduleView: UIViewController) {
            self.moduleView = moduleView
        }
    }
    
    override func spec() {
        var view: ___VARIABLE_moduleName___ViewController!
        var presenter: ___VARIABLE_moduleName___Presenter!
        var interactor: ___VARIABLE_moduleName___Interactor!
        var router: ___VARIABLE_moduleName___Router!
        
        beforeEach {
            let rootViewController = ___VARIABLE_moduleName___Module().assemble()
            let module = ___VARIABLE_moduleName___ModuleUnwrapper(moduleView: rootViewController)
            
            view = module.view
            presenter = module.presenter
            interactor = module.interactor
            router = module.router
        }
        
        afterEach {
            view = nil
            presenter = nil
            interactor = nil
            router = nil
        }
        
        it("sets up the router dependecies") {
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
