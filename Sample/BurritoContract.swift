import Foundation
import UIKit

protocol BurritoCoordinatingOutput: class {
}

protocol BurritoCoordinating: class {
    var rootViewController: UIViewController! { get set }
    var output: BurritoCoordinatingOutput! { get set }

    static func assemble(output: BurritoCoordinatingOutput) -> BurritoCoordinating
}

protocol BurritoPresenting: class {
    var interactor: BurritoInteracting! { get set }
    var coordinator: BurritoCoordinating! { get set }
    var view: BurritoViewable! { get set }

    func viewDidLoad()
}

protocol BurritoInteracting: class {
    var output: BurritoInteractingOutput! { get set }
}

protocol BurritoInteractingOutput: class {
}

protocol BurritoViewable: class {
    var presenter: BurritoPresenting! { get set }
}
