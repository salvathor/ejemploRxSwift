//
//  ViewController.swift
//  ejemploRxSwift
//
//  Created by Salvador Lopez on 11/09/20.
//  Copyright © 2020 Salvador Lopez. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

  let objObservable = Observable<Int>.of(1,2,3)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    objObservable.map {
      $0 * 10
    }.subscribe(onNext: { (value) in
          print("Next: \(value)")
        }, onError: { (error) in
          print("Error: \(error)")
        }, onCompleted: {
          print("Terminaron los elementos")
        }) {
          print("Disposed")
        }
    
//    objObservable.subscribe(onNext: { (value) in
//      print("Next: \(value)")
//    }, onError: { (error) in
//      print("Error: \(error)")
//    }, onCompleted: {
//      print("Terminaron los elementos")
//    }) {
//      print("Disposed")
//    }
    
  }


}

