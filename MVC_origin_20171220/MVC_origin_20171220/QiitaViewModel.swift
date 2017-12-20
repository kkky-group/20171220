//
//  QiitaViewModel.swift
//  qiitaList
//
//  Created by 山崎友弘 on 2015/04/11.
//  Copyright (c) 2015年 basic. All rights reserved.
//

import UIKit
let CellId = "CellId"

class QiitaViewModel: NSObject, UITableViewDataSource  {
    var qiitList: [String] = ["オバマMVC", "トランプMVC", "ジェームズMVC", "マイクMVC", "ようへいMVC"]
    
    override init() {
        super.init()
    }
    
    // MARK: - DataSourceメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: CellId);
        cell.textLabel?.text = qiitList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qiitList.count
    }
}
