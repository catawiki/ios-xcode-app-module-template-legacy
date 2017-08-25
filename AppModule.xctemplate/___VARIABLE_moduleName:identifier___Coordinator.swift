import Foundation
import UIKit

class ___VARIABLE_moduleName___Coordinator: ___VARIABLE_moduleName___Coordinating {
    weak var rootViewController: UIViewController!
    weak var output: ___VARIABLE_moduleName___CoordinatingOutput!

    static func assemble(output: ___VARIABLE_moduleName___CoordinatingOutput) -> ___VARIABLE_moduleName___Coordinating {
        let coordinator = ___VARIABLE_moduleName___Coordinator()
        let view = ___VARIABLE_moduleName___ViewController.from(storyboard: "Main")
        let presenter = ___VARIABLE_moduleName___Presenter()
        let interactor = ___VARIABLE_moduleName___Interactor()
        
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
