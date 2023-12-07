//
//  SettingsProtocols.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

protocol SettingsModuleInput {
	var moduleOutput: SettingsModuleOutput? { get }
}

protocol SettingsModuleOutput: AnyObject {
}

protocol SettingsViewInput: AnyObject {
}

protocol SettingsViewOutput: AnyObject {
}

protocol SettingsInteractorInput: AnyObject {
}

protocol SettingsInteractorOutput: AnyObject {
}

protocol SettingsRouterInput: AnyObject {
}
