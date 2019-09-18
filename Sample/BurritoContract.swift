import Foundation

protocol BurritoRouting: AnyObject {}

protocol BurritoPresenting: AnyObject {
    var interactor: BurritoInteracting! { get set }
    var router: BurritoRouting! { get set }
    var view: BurritoViewable? { get set }

    func viewDidLoad()
}

protocol BurritoInteracting: AnyObject {
    var output: BurritoInteractingOutput? { get set }
}

protocol BurritoInteractingOutput: AnyObject {
}

protocol BurritoViewable: AnyObject {
    var presenter: BurritoPresenting! { get set }
}
