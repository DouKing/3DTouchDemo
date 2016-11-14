//
//  DetailViewController.swift
//  3DTouchDemo
//
//  Created by iosci on 2016/11/14.
//  Copyright © 2016年 secoo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
		
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override var previewActionItems: [UIPreviewActionItem] {
    
    let itemShare = UIPreviewAction(title: "分享", style: .default) {
      previewAction, viewController in
      
      print("\(viewController), \(previewAction)")
      
    }
    
    return [itemShare]
  }
  
  
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
  }
  
}
