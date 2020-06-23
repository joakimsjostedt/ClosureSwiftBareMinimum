//
//  ViewController.swift
//  ClosureSwiftBareMinimum
//
//  Created by Joakim Sjöstedt on 2020-06-23.
//  Copyright © 2020 Joakim Sjöstedt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1.
        closureFunction(completion: {
            print("DONE")
        })
        
        //2.
        let viewModel = SecondClass(closureVariable: functionToSend)
        
        //2.
        viewModel.run()
    }
    //1.
    func closureFunction(completion: @escaping () -> Void) {
        print("RUNNING FUNCTION")
        completion()
    }
    
    //2.
    func functionToSend() {
        print("WOW IT'S WORKING!")
    }
}

//2.
class SecondClass {
    var closureVariable: (() -> Void)?
    
    init(closureVariable: @escaping () -> Void) {
        self.closureVariable = closureVariable
    }
    
    func run() {
        closureVariable!()
    }
}
