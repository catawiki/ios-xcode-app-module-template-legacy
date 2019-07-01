import Foundation
import UIKit

protocol BurritoCoordinatingOutput: AnyObject {
}

protocol BurritoCoordinating: AnyObject {
    var rootViewController: UIViewController? { get set }
    var output: BurritoCoordinatingOutput? { get set }

    static func assemble(output: BurritoCoordinatingOutput) -> BurritoCoordinating
}

protocol BurritoPresenting: AnyObject {
    var interactor: BurritoInteracting! { get set }
    var coordinator: BurritoCoordinating! { get set }
    var view: BurritoViewable? { get set }

    func viewDidLoad()
}

protocol BurritoInteracting: AnyObject {
    var output: BurritoInteractingOutput? { get set }
}

protocol BurritoInteractingOutput: AnyObject {
}

protocol BurritoViewable: class {
    var presenter: BurritoPresenting! { get set }
}
