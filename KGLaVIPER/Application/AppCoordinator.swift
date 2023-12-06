//
//  AppCoordinator.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//

import UIKit

final class AppCoordinator {
    
    private var window: UIWindow?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        guard let window = window else { return }
        let context = FirstContext(moduleOutput: nil)
        let container = FirstContainer.assemble(with: context)
        let nav = UINavigationController(rootViewController: container.viewController)
        window.rootViewController = nav
        window.makeKeyAndVisible()
    }
}
