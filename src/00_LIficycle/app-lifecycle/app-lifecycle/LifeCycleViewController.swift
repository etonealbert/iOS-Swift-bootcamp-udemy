//
//  LifeCycleViewController.swift
//  app-lifecycle
//
//  Created by Albert on 27.06.2023.
//

import UIKit

final class LifeCycleViewController: UIViewController {
    
    // MARK: - Initialization
    
    override init(nibName nibNameOrNil: String?, bundle nibBundelOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundelOrNil)
        print("\(#function)")
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
        print("\(#function)")
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        print("\(#function)")
    }
    
    override func loadView() {
        super.loadView()
        print("\(#function)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(#function)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print(#function)
    }
    
    // MARK: - Deinitialization
    
    deinit {
        print(#function)
    }
}
