import Foundation
import UIKit

class ___VARIABLE_moduleName___Coordinator: ___VARIABLE_moduleName___Coordinating {
    weak var output: ___VARIABLE_moduleName___CoordinatingOutput?

    static func assemble(output: ___VARIABLE_moduleName___CoordinatingOutput) -> UIViewController {
        let coordinator = ___VARIABLE_moduleName___Coordinator()
        let view: ___VARIABLE_moduleName___ViewController = UIViewController.fromStoryboard(named: "Main")
        let presenter = ___VARIABLE_moduleName___Presenter()
        let interactor = ___VARIABLE_moduleName___Interactor()

        presenter.interactor = interactor
        presenter.view = view
        presenter.coordinator = coordinator

        view.presenter = presenter

        interactor.output = presenter

        coordinator.output = output

        return view
    }
}
