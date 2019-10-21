@testable import NavigationControllerExample
import Foundation
import Cuckoo
import Nimble
import Quick
import RxSwift
import RxTest

class NotificationCenterAPISpec: QuickSpec {

  override func spec() {

    describe("A view model") {

      var viewModel: FirstViewControllerViewModelProtocol!

      context("when doing stuff") {
        
        beforeEach {
          
          viewModel = FirstViewControllerViewModel()
          
        }
        
        it("should do the stuff") {
          
          expect(viewModel).toNot(beNil())
          
        }

      }

    }

  }

}
