//
//  ViewController.swift
//  Quản Lý Hàng Hoá
//
//  Created by Admin on 12/3/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import Toaster
import Alamofire
import SwiftyJSON
class ListGoodsViewController: UIViewController, UINavigationControllerDelegate {
    var arrCity = [cityObject]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        getDataLink()
    }
    
    func getDataLink() {
        let dataRequest:DataRequest = Alamofire.request(URL.init(string: "https://thongtindoanhnghiep.co/api/city")!)
        dataRequest.response { (response) in
            let json = JSON.init(response.data as Any)
            let arrData = json["LtsItem"].array
            print(arrData?.count)
            if (arrData?.count)! > 0 {
                for data in arrData! {
                    let city = cityObject.init(json: data)
                    self.arrCity.append(city)
                }
                print(self.arrCity.count)
                
            }
            print(json.debugDescription)
        }
    }
}

extension ListGoodsViewController: UIImagePickerControllerDelegate {
    @IBAction func nextViewAddNewGoods(_ sender: Any) {
        let selectedImage = UIImagePickerController()
        selectedImage.sourceType = .photoLibrary
        selectedImage.delegate = self
        present(selectedImage, animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            fatalError("Khong the truy cap vao library")
        }
        let sb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "addNewGoods") as? AddNewGoodsViewController
        self.navigationController?.pushViewController(sb!, animated: true)
        dismiss(animated: true, completion: nil)
    }
}

extension ListGoodsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(arrCity.count)
        return arrCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        cell?.textLabel?.text = "21"
        return cell!
    }
}
