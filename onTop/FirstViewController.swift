//
//  FirstViewController.swift
//  onTop
//
//  Created by 阳书成 on 16/3/10.
//  Copyright © 2016年 阳书成. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let bookId:NSInteger = 1220562
        let subPath = NSString(format: "/book/subject/%d", bookId)
        let query:DOUQuery = DOUQuery(subPath: subPath as String, parameters: nil)
        query.apiBaseUrlString = DOUService().apiBaseUrlString;
        DOUHttpRequest(query: query) { () -> Void in
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

