//
//  cityObject.swift
//  Quản Lý Hàng Hoá
//
//  Created by Admin on 12/4/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import SwiftyJSON
class cityObject: NSObject {
    var title: String?
    var solrID: String?
    var Updated: Int?
    var STT: Int?
    var Created: Int?
    var ID: Int?
    var type: Int?
    var TotalDoanhNghiep: Int?
    
    required init(json: JSON) {
        title = json["Title"].string
        solrID = json["SolrID"].string
        Updated = json["Updated"].int
        STT = json["STT"].int
        Created = json["Created"].int
        ID = json["ID"].int
        type = json["type"].int
        TotalDoanhNghiep = json["TotalDoanhNghiep"].int
    }
}
