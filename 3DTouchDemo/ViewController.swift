//
//  ViewController.swift
//  3DTouchDemo
//
//  Created by iosci on 2016/11/14.
//  Copyright © 2016年 secoo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UIViewControllerPreviewingDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
      self.registerForPreviewing(with: self, sourceView: self.view)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController")
    return detailVC
  }
  
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
    self.show(viewControllerToCommit, sender: nil)
  }

}

