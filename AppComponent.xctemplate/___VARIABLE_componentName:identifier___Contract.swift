import Foundation

protocol ___VARIABLE_componentName___ComponentType {
    func assemble() -> UIViewController
}

protocol ___VARIABLE_componentName___Routing: AnyObject {
    var rootViewController: UIViewController? { get set }
}

protocol ___VARIABLE_componentName___Presenting: AnyObject {
    var interactor: ___VARIABLE_componentName___Interacting! { get set }
    var router: ___VARIABLE_componentName___Routing! { get set }
    var view: ___VARIABLE_componentName___Viewable? { get set }

    func viewDidLoad()
}

protocol ___VARIABLE_componentName___Interacting: AnyObject {
    var output: ___VARIABLE_componentName___InteractingOutput? { get set }
}

protocol ___VARIABLE_componentName___InteractingOutput: AnyObject {
}

protocol ___VARIABLE_componentName___Viewable: AnyObject {
    var presenter: ___VARIABLE_componentName___Presenting! { get set }
}
