import Foundation

class BurritoPresenter: BurritoPresenting {
    var interactor: BurritoInteracting!
    var coordinator: BurritoCoordinating!
    weak var view: BurritoViewable!

    func viewDidLoad() {

    }
}

extension BurritoPresenter: BurritoInteractingOutput {

}
