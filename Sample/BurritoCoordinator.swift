import Foundation
import UIKit

class BurritoCoordinator: BurritoCoordinating {
    weak var rootViewController: UIViewController!
    weak var output: BurritoCoordinatingOutput!

    static func assemble(output: BurritoCoordinatingOutput) -> BurritoCoordinating {
        let coordinator = BurritoCoordinator()
        let view = BurritoViewController.from(storyboard: "Main")
        let presenter = BurritoPresenter()
        let interactor = BurritoInteractor()
        
        presenter.interactor = interactor
        presenter.view = view
        presenter.coordinator = coordinator

        view.presenter = presenter

        interactor.output = presenter
        
        coordinator.rootViewController = view
        coordinator.output = output

        return coordinator
    }
}
