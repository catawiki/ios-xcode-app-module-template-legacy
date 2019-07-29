import Foundation
import Quick
import Nimble
@testable import Catawiki

class BurritoSpec: QuickSpec {
    override func spec() {
        var subject: Burrito!

        beforeEach {
            subject = Burrito()
        }

        afterEach {
            subject = nil
        }
    }
}
