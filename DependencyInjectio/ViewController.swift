//
//  ViewController.swift
//  DependencyInjectio
//
//  Created by Sriram Prasad on 05/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var someService: SomeService
    
   init(someService:SomeService) {
       self.someService =  someService
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        someService.doSomeStuff()
      
    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        
        
        let secondVc = SecondVC(someService: someService)
        present(secondVc, animated: true)
    }

}







class SecondVC: UIViewController  {
    let someService : SomeService
    init(someService:SomeService){
    self.someService = someService
    super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .green
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
