//___FILEHEADER___

import UIKit

protocol AppCoordinatorProtocol: Coordinator {
    
}

final class AppCoordinator: AppCoordinatorProtocol {
    weak var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType = .app
    var viewController: ViewController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    
    func start() {
        self.navigationController.viewControllers = [self.viewController]
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: Coordinator) {
        self.childCoordinators.removeAll()
    }
}
