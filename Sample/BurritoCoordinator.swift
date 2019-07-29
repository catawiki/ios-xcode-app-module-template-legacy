import Foundation
import UIKit

class BurritoCoordinator: BurritoCoordinating {
    weak var output: BurritoCoordinatingOutput?

    static func assemble(output: BurritoCoordinatingOutput) -> UIViewController {
        let coordinator = BurritoCoordinator()
        let view: BurritoViewController = UIViewController.fromStoryboard(named: "Main")
        let presenter = BurritoPresenter()
        let interactor = BurritoInteractor()

        presenter.interactor = interactor
        presenter.view = view
        presenter.coordinator = coordinator

        view.presenter = presenter

        interactor.output = presenter

        coordinator.output = output

        return view
    }
}
