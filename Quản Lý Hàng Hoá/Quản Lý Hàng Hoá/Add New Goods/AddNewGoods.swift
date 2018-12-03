//
//  AddNewGoods.swift
//  Quản Lý Hàng Hoá
//
//  Created by Admin on 12/3/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class AddNewGoods: UIViewController {

    @IBOutlet weak var btnAdd: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
        btnAdd.tintColor = UIColor.red
        btnAdd.setBackgroundImage(UIImage(named: "linear"), for: <#T##UIControl.State#>, barMetrics: <#T##UIBarMetrics#>)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
