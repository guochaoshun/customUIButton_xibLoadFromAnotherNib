//
//  ShareButton.swift
//  表情制作器
//
//  Created by 郭朝顺 on 2018/9/28星期五.
//  Copyright © 2018年 智网易联. All rights reserved.
//

import UIKit

class ShareButton: UIButton {

    
    @IBInspectable var titleLabelFrame : CGRect = CGRect.zero
    @IBInspectable var imageViewFrame : CGRect = CGRect.zero

    // 方法2
    override func layoutSubviews() {

        self.titleLabel?.textAlignment = .center

        super.layoutSubviews()


        if self.titleLabelFrame.equalTo(.zero)  {
            self.titleLabel?.frame = CGRect(x: 0, y: 50, width: 160, height: 30)
        } else {
            self.titleLabel?.frame = self.titleLabelFrame
        }

        if self.imageViewFrame.equalTo(.zero) {
            self.imageView?.frame = CGRect(x: 60, y: 10, width: 40, height: 40)
        } else {
            self.imageView?.frame = self.imageViewFrame
        }


    }
//
//    // 方法3
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        self.titleLabel?.textAlignment = .center
//    }
//    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
//        if self.imageViewFrame.equalTo(.zero) {
//            return CGRect(x: 60, y: 10, width: 40, height: 40)
//        } else {
//            return self.imageViewFrame
//        }
//    }
//    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
//        if self.titleLabelFrame.equalTo(.zero)  {
//            return CGRect(x: 0, y: 50, width: 160, height: 30)
//        } else {
//            return self.titleLabelFrame
//        }
//    }
    
    

}
