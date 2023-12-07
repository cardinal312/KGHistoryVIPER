//
//  PersonalityContainer.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import UIKit

final class PersonalityContainer {
    let input: PersonalityModuleInput
	let viewController: UIViewController
	private(set) weak var router: PersonalityRouterInput!

	static func assemble(with context: PersonalityContext) -> PersonalityContainer {
        let router = PersonalityRouter()
        let interactor = PersonalityInteractor()
        let presenter = PersonalityPresenter(router: router, interactor: interactor)
		let viewController = PersonalityViewController(output: presenter)

		presenter.view = viewController
		presenter.moduleOutput = context.moduleOutput

		interactor.output = presenter

        return PersonalityContainer(view: viewController, input: presenter, router: router)
	}

    private init(view: UIViewController, input: PersonalityModuleInput, router: PersonalityRouterInput) {
		self.viewController = view
        self.input = input
		self.router = router
	}
}

struct PersonalityContext {
	weak var moduleOutput: PersonalityModuleOutput?
}
