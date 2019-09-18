import Foundation

enum ___VARIABLE_moduleName___Module {
    static func assemble() -> UIViewController {
        let router = ___VARIABLE_moduleName___Router()
        let view = ___VARIABLE_moduleName___ViewController()
        let presenter = ___VARIABLE_moduleName___Presenter()
        let interactor = ___VARIABLE_moduleName___Interactor()

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        view.presenter = presenter

        interactor.output = presenter

        router.rootViewController = view

        return view
    }
}