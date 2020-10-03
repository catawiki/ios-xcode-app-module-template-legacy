import UIKit

class ___VARIABLE_componentName___Component: ___VARIABLE_componentName___ComponentType {
    func assemble() -> UIViewController {
        let router = ___VARIABLE_componentName___Router()
        let view = ___VARIABLE_componentName___ViewController()
        let presenter = ___VARIABLE_componentName___Presenter()
        let interactor = ___VARIABLE_componentName___Interactor()

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        view.presenter = presenter

        interactor.output = presenter

        router.rootViewController = view

        return view
    }
}
