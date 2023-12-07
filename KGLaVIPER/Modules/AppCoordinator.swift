//
//  AppCoordinator.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//

import UIKit

final class AppCoordinator {
    
    private let window: UIWindow
    private lazy var tabBarController = UITabBarController()
    private lazy var navigationControllers = AppCoordinator.makeNavigationControllers()
    
    init(window: UIWindow) {
        self.window = window
        self.setupAppearance()
    }
    
    func start() {
        self.setupHistory()
        self.setupEvent()
        self.setupPersonality()
        self.setupSettings()
        
        let navigationControllers = NavControllerType.allCases.compactMap {
            self.navigationControllers[$0]
        }
        self.tabBarController.setViewControllers(navigationControllers, animated: true)
        self.window.rootViewController = self.tabBarController
        self.window.makeKeyAndVisible()
    }
}

private extension AppCoordinator {
    func setupHistory() {
        guard let navController = self.navigationControllers[.history] else {
            fatalError("can't find navController")
        }
        let context = HistoryContext(moduleOutput: nil)
        let container = HistoryContainer.assemble(with: context)
        container.viewController.view.backgroundColor = .yellow
        navController.setViewControllers([container.viewController], animated: false)
        container.viewController.navigationItem.title = NavControllerType.history.title
    }
    
    func setupEvent() {
        guard let navController = self.navigationControllers[.event] else {
            fatalError("can't find navController")
        }
        let viewController = UIViewController()
        viewController.view.backgroundColor = .brown
        navController.setViewControllers([viewController], animated: false)
        viewController.navigationItem.title = NavControllerType.event.title
    }
    
    func setupPersonality() {
        guard let navController = self.navigationControllers[.personality] else {
            fatalError("can't find navController")
        }
        let viewController = UIViewController()
        viewController.view.backgroundColor = .purple
        navController.setViewControllers([viewController], animated: false)
        viewController.navigationItem.title = NavControllerType.personality.title
    }
    
    func setupSettings() {
        guard let navController = self.navigationControllers[.settings] else {
            fatalError("can't find navController")
        }
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        navController.setViewControllers([viewController], animated: false)
        viewController.navigationItem.title = NavControllerType.settings.title
    }
    
    func setupAppearance() {
                UINavigationBar.appearance().barTintColor = .white
                UINavigationBar.appearance().tintColor = .black
        
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            
            appearance.backgroundColor = .white
            UINavigationBar.appearance().isTranslucent = false
            
            UINavigationBar.appearance().tintColor = .black
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            
        } else {
            UINavigationBar.appearance().tintColor = .green
            UINavigationBar.appearance().barTintColor = .purple
            UINavigationBar.appearance().isTranslucent = false
        }
        UINavigationBar.appearance().shadowImage = UIImage()
        
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .blue
        UINavigationBar.appearance().isTranslucent = false
    }
    
    static func makeNavigationControllers() -> [NavControllerType: UINavigationController] {
        var result: [NavControllerType: UINavigationController] = [:]
        NavControllerType.allCases.forEach { navControllerKey in
            let navigationController = UINavigationController()
            let tabBarItem = UITabBarItem(title: navControllerKey.title,
                                          image: navControllerKey.image,
                                          tag: navControllerKey.rawValue)
            navigationController.tabBarItem = tabBarItem
            navigationController.tabBarItem.selectedImage = navControllerKey.selectedImage
            //navigationController.navigationBar.prefersLargeTitles = true
            result[navControllerKey] = navigationController
        }
        return result
    }
}

    private enum NavControllerType: Int, CaseIterable {
    case history, event, personality, settings
    
    var title: String {
        switch self {
        case .history:
            return Localization.history
        case .event:
            return Localization.events
        case .personality:
            return Localization.personalities
        case .settings:
            return Localization.settings
        }
    }
    
    var image: UIImage? {
        switch self {
        case .history:
            return Styles.TabbarItem.history
        case .event:
            return Styles.TabbarItem.events
        case .personality:
            return Styles.TabbarItem.personalities
        case .settings:
            return Styles.TabbarItem.settings
        }
    }
    
    var selectedImage: UIImage? {
        switch self {
        case .history:
            return Styles.TabbarSelectedItem.history
        case .event:
            return Styles.TabbarSelectedItem.events
        case .personality:
            return Styles.TabbarSelectedItem.personalities
        case .settings:
            return Styles.TabbarSelectedItem.settings
        }
    }
}
