import Foundation
import UIKit

protocol BurritoCoordinatingOutput: class {

}

protocol BurritoCoordinating: class {
    var rootViewController: UIViewController! { get set }
    weak var output: BurritoCoordinatingOutput! { get set }
    static func assemble(output:BurritoCoordinatingOutput) -> BurritoCoordinating
}

protocol BurritoPresenting {
    var interactor: BurritoInteracting! { get set }
    weak var coordinator: BurritoCoordinating! { get set }
    weak var view: BurritoViewable! { get set }

    func viewDidLoad()
}

protocol BurritoInteracting: class {
    weak var output: BurritoInteractingOutput! { get set }
}

protocol BurritoInteractingOutput: class {

}

protocol BurritoViewable: class {
    var presenter: BurritoPresenting! { get set }

}