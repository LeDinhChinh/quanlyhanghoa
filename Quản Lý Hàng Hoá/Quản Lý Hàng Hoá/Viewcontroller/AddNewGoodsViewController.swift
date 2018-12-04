//
//  AddNewGoods.swift
//  Quản Lý Hàng Hoá
//
//  Created by Admin on 12/3/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddNewGoodsViewController: UCBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
        title = "Add new a goods"
//        self.isShowNoti = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewwillappear addnewgoods")
    }
   
}
