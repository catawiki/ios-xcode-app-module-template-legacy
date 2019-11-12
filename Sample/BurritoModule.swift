import UIKit

class BurritoModule: BurritoModuleType {
    func assemble() -> UIViewController {
        let router = BurritoRouter()
        let view = BurritoViewController()
        let presenter = BurritoPresenter()
        let interactor = BurritoInteractor()

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        view.presenter = presenter

        interactor.output = presenter

        router.rootViewController = view

        return view
    }
}

#warning("Template for the module creation spec. MOVE TO TEST TARGET")

class BurritoModuleSpec: QuickSpec {
    class BurritoModuleUnwrapper {
        private let moduleView: UIViewController

        var view: BurritoViewController {
            return moduleView as! BurritoViewController
        }

        var presenter: BurritoPresenter {
            return view.presenter as! BurritoPresenter
        }

        var interactor: BurritoInteractor {
            return presenter.interactor as! BurritoInteractor
        }

        var router: BurritoRouter {
            return presenter.router as! BurritoRouter
        }

        init(moduleView: UIViewController) {
            self.moduleView = moduleView
        }
    }

    override func spec() {
        var view: BurritoViewController!
        var presenter: BurritoPresenter!
        var interactor: BurritoInteractor!
        var router: BurritoRouter!

        beforeEach {
            let rootViewController = BurritoModule()
            let module = BurritoModuleUnwrapper(moduleView: rootViewController)
            
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
