//
//  AppContainer.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 19/07/2024.
//

import Swinject

struct AppContainer {
    static let `default`: Container = {
        let container = Container()
        
        // Register NetworkClient and NetworkService
        container.register(NetworkClient.self) { _ in
            URLSessionNetworkClient()
        }
        
        container.register(NetworkService.self) { resolver in
            DefaultNetworkService(networkClient: resolver.resolve(NetworkClient.self)!)
        }

        // Register DataPresenter first
        container.register(DataPresenter.self) { resolver in
            // Resolve DataViewController instance which will be injected here
            let viewController = resolver.resolve(DataViewController.self)!
            return DefaultDataPresenter(
                view: viewController,
                networkService: resolver.resolve(NetworkService.self)!
            )
        }

        // Register DataViewController with a factory that uses DataPresenter
        container.register(DataViewController.self) { resolver in
            // Resolve DataPresenter first to inject into DataViewController
            
            let viewController = DataViewController()
            let presenter = DefaultDataPresenter(
                view: viewController,
                networkService: resolver.resolve(NetworkService.self)!)
                
            viewController.presenter = presenter
            return viewController
        }

        return container
    }()
}

