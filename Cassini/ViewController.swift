//
//  ViewController.swift
//  Cassini
//
//  Created by Alberto Vega Gonzalez on 9/11/15.
//  Copyright (c) 2015 Alberto Vega Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let ivc = segue.destination as? ImageViewController {
      if let identifier = segue.identifier {
        switch identifier {
          case "Earth":
          ivc.imageURL = DemoURL.NASA.Earth
          ivc.title = "Earth"
          case "Saturn":
          ivc.imageURL = DemoURL.NASA.Saturn
          ivc.title = "Saturn"
          case "Cassini":
          ivc.imageURL = DemoURL.NASA.Cassini
          ivc.title = "Cassini"
        default: break
        }
      }
    }
  }

}

