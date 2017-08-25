import Foundation
import UIKit

protocol ___VARIABLE_moduleName___CoordinatingOutput: class {
}

protocol ___VARIABLE_moduleName___Coordinating: class {
    weak var rootViewController: UIViewController! { get set }
    weak var output: ___VARIABLE_moduleName___CoordinatingOutput! { get set }

    static func assemble(output: ___VARIABLE_moduleName___CoordinatingOutput) -> ___VARIABLE_moduleName___Coordinating
}

protocol ___VARIABLE_moduleName___Presenting {
    var interactor: ___VARIABLE_moduleName___Interacting! { get set }
    var coordinator: ___VARIABLE_moduleName___Coordinating! { get set }
    weak var view: ___VARIABLE_moduleName___Viewable! { get set }

    func viewDidLoad()
}

protocol ___VARIABLE_moduleName___Interacting: class {
    weak var output: ___VARIABLE_moduleName___InteractingOutput! { get set }
}

protocol ___VARIABLE_moduleName___InteractingOutput: class {
}

protocol ___VARIABLE_moduleName___Viewable: class {
    var presenter: ___VARIABLE_moduleName___Presenting! { get set }
}
