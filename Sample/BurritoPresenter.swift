import Foundation

class BurritoPresenter: BurritoPresenting {
    var interactor: BurritoInteracting!
    var router: BurritoRouting!
    weak var view: BurritoViewable?

    func viewDidLoad() {
    }
}

extension BurritoPresenter: BurritoInteractingOutput {

}
