//
//  QiitaListView.swift
//  qiitaList
//
//  Created by 山崎友弘 on 2015/04/11.
//  Copyright (c) 2015年 basic. All rights reserved.
//

import UIKit

class QiitaListView: UIView {
    let table :UITableView
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(model: QiitaViewModel) {
        table = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: UITableViewStyle.plain)
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0));
        self.addSubview(table);
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        table.frame = self.frame        
    }

}
