import Foundation
import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___Viewable {
    var presenter: ___VARIABLE_moduleName___Presenting!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


extension ___VARIABLE_moduleName___ViewController {

    static func from(storyboard: String) -> ___VARIABLE_moduleName___ViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_moduleName___ViewController")
        return vc as! ___VARIABLE_moduleName___ViewController
    }

}

