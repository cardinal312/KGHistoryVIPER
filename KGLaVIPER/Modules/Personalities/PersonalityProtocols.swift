//
//  PersonalityProtocols.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

protocol PersonalityModuleInput {
	var moduleOutput: PersonalityModuleOutput? { get }
}

protocol PersonalityModuleOutput: AnyObject {
}

protocol PersonalityViewInput: AnyObject {
}

protocol PersonalityViewOutput: AnyObject {
}

protocol PersonalityInteractorInput: AnyObject {
}

protocol PersonalityInteractorOutput: AnyObject {
}

protocol PersonalityRouterInput: AnyObject {
}
