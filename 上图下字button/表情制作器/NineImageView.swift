//
//  NineImageView.swift
//  表情制作器
//
//  Created by 郭朝顺 on 2018/9/28星期五.
//  Copyright © 2018年 智网易联. All rights reserved.
//

import UIKit

class NineImageView: UIView {

    @IBOutlet weak var label: UILabel!
    
    // 方法2
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        guard let v = Bundle.main.loadNibNamed("NineImageView", owner: self, options: nil)?.first as? UIView
        else {
            return
        }

        v.frame = self.bounds
        self.addSubview(v)
        
    }
    
    
   

}
