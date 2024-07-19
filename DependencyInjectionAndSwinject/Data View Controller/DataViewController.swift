//
//  DataViewController.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 20/07/2024.
//

import UIKit

class DataViewController: UIViewController , DataView {
    
    var presenter: DataPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.global(qos: .utility).async {
            self.presenter.loadData()
        }
    }

    deinit {
        debugPrint("deinit DataViewController")
    }
    
    func displayData(_ data: [MenuItem]) {
        // Display data in the UI
        print("Data received: \(data)")
    }

    func displayError(_ error: Error) {
        // Display error in the UI
        print("Error: \(error)")
    }
}
