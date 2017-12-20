//
//  QitaListViewController.swift
//  qiitaList
//
//  Created by 山崎友弘 on 2015/04/11.
//  Copyright (c) 2015年 basic. All rights reserved.
//

import UIKit

class QitaListViewController: UIViewController,UITableViewDelegate {
    private let mModel = QiitaViewModel();
    
    override func loadView() {
        self.view = QiitaListView(model:mModel);
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let qiitaListView = self.view as! QiitaListView
        qiitaListView.table.delegate   = self;
        qiitaListView.table.dataSource = mModel;
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("\(indexPath.row)番目が選択されました。")
    }
}
