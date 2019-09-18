import Foundation

protocol ___VARIABLE_moduleName___Routing: AnyObject {}

protocol ___VARIABLE_moduleName___Presenting: AnyObject {
    var interactor: ___VARIABLE_moduleName___Interacting! { get set }
    var router: ___VARIABLE_moduleName___Routing! { get set }
    var view: ___VARIABLE_moduleName___Viewable? { get set }

    func viewDidLoad()
}

protocol ___VARIABLE_moduleName___Interacting: AnyObject {
    var output: ___VARIABLE_moduleName___InteractingOutput? { get set }
}

protocol ___VARIABLE_moduleName___InteractingOutput: AnyObject {
}

protocol ___VARIABLE_moduleName___Viewable: AnyObject {
    var presenter: ___VARIABLE_moduleName___Presenting! { get set }
}
