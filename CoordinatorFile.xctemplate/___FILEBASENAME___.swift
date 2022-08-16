//___FILEHEADER___

import UIKit

protocol ___FILEBASENAME___Protocol: Coordinator {
    
}

final class ___FILEBASENAME___: ___FILEBASENAME___Protocol {
    weak var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType =
    // var tempViewController: TempViewController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        // self.tempViewController = UIStoryboard(name: "Temp", bundle: nil).instantiateViewController(withIdentifier: "TempView") as! TempViewController
    }
    
    func start() {
        // self.tempViewController.appCoordinator = self
        self.navigationController.pushViewController(self.tempViewController, animated: true)
    }
}

extension ___FILEBASENAME___: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: Coordinator) {
        self.childCoordinators.removeAll()
        self.finishDelegate?.coordinatorDidFinish(childCoordinator: self)
    }
}
