//
//  AppContainer.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 19/07/2024.
//

import Foundation
import Swinject

struct AppContainer {
    static let `default`: Container = {
        let container = Container()
        
        // Register your services and dependencies here
        
        
        return Container(parent: container)
    }()
}
