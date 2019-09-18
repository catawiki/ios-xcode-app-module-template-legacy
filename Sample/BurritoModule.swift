import Foundation

enum BurritoModule {
    static func assemble() -> UIViewController {
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
