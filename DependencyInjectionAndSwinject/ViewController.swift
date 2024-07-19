//
//  ViewController.swift
//  DependencyInjectionAndSwinject
//
//  Created by Nouman Gul Junejo on 19/07/2024.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapped(_ sender:UIButton){
        
        DispatchQueue.main.asyncAfter(deadline: .now()){
            guard let dataViewController = AppContainer.default.resolve(DataViewController.self) else { return }
            self.navigationController?.pushViewController(dataViewController, animated: true)
        }
    }
}

