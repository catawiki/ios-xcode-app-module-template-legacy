import Foundation
import UIKit

class BurritoViewController: UIViewController, BurritoViewable {
    
    var presenter: BurritoPresenting!
    
    override func viewDidLoad() {

    }
}


extension BurritoViewController {

    static func from(storyboard:String) -> BurritoViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BurritoViewController")
        return vc as! BurritoViewController
    }
}

