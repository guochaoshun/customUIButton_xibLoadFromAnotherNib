//
//  ViewController.swift
//  表情制作器
//
//  Created by 郭朝顺 on 2018/7/4星期三.
//  Copyright © 2018年 智网易联. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var greenView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//      setEdgeInsets()

        
        // 方法1: xib中有一个普通的view占位,然后把另一个xib的加上去
        // 方法2: xib中直接就是自己的类名,然后重写initWithCoder,在此方法中把一个普通的UIView加上去

        
        // 方法1
        guard let content = Bundle.main.loadNibNamed("ShareView", owner: nil, options: nil)?.first as? ShareView else {
            return
        }
        content.frame = self.greenView.bounds
        self.greenView.addSubview(content)
        
        
        
    }
    
    // 方法1 通知设置EdgeInsets
    // 方法2 建子类,重写layoutSubviews , 这个直观,推荐
    // 方法3 建子类,重写imageRectForContentRect titleRectForContentRect
    // 方法2,3可以直接在外界和xib中设置值,更方便
    func setEdgeInsets()  {
        
        let labelWidth = button.titleLabel!.intrinsicContentSize.width
        let labelHeight = button.titleLabel!.intrinsicContentSize.height
        
        let imageWidth = button.imageView!.intrinsicContentSize.width
        let imageHeight = button.imageView!.intrinsicContentSize.height
        
        
        button.imageEdgeInsets = UIEdgeInsets.init(top: -labelHeight, left: 0, bottom: 0, right: -labelWidth)
        button.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imageWidth, bottom: -imageHeight, right: 0)

        
    }



}

