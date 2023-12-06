//
//  FirstProtocols.swift
//  KGLaVIPER
//
//  Created by Macbook on 7/12/23.
//  
//

import Foundation

protocol FirstModuleInput {
	var moduleOutput: FirstModuleOutput? { get }
}

protocol FirstModuleOutput: class {
}

protocol FirstViewInput: class {
}

protocol FirstViewOutput: class {
    func showSecondVC()
}

protocol FirstInteractorInput: class {
}

protocol FirstInteractorOutput: class {
}

protocol FirstRouterInput: class {
    func showSecondVC()
}
