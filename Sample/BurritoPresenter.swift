import Foundation

class BurritoPresenter: BurritoPresenting {
    var interactor: BurritoInteracting!
    weak var coordinator: BurritoCoordinating!
    weak var view: BurritoViewable!

    //Setup the view
    func viewDidLoad() {

    }
}

extension BurritoPresenter: BurritoInteractingOutput {

}
