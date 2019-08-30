//
//  DryImageTitleButton.swift
//  DryButton-iOS
//
//  Created by WJ on 2019/8/30.
//

import UIKit

//MARK: - 图文类型
public enum DryImageTitleButtonMode {
    /// 图片在左(默认)
    case imageLeft
    /// 图片在右
    case imageRight
    /// 图片在上
    case imageTop
    /// 图片在下
    case imageBottom
}

//MARK: - DryImageTitleButton(图文按钮)
public class DryImageTitleButton: UIButton {
    
    /// 图文类型
    public var mode: DryImageTitleButtonMode = .imageLeft
    /// 图文间距
    public var space: CGFloat = 0.0
    
    /// 构造
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    /// 析构
    deinit {}
}

//MARK: - 布局
extension DryImageTitleButton {
    
    /// 重载: 子视图布局
    override public func layoutSubviews() {
        
        /// 继承父类
        super.layoutSubviews()
        
        /// ImageView的宽度、高度、中心点X的坐标(以按钮左上角为原点的坐标系)
        let imageW: CGFloat = self.imageView != nil ? self.imageView!.bounds.width : 0.0
        let imageH: CGFloat = self.imageView != nil ? self.imageView!.bounds.height : 0.0
        
        /// titleLabel的宽度、高度
        let titleW: CGFloat = self.titleLabel != nil ? self.titleLabel!.bounds.width : 0.0
        let titleH: CGFloat = self.titleLabel != nil ? self.titleLabel!.bounds.height : 0.0
        
        /// 按钮中心点X的坐标(以按钮左上角为原点的坐标系)
        let btnCenterX: CGFloat = self.bounds.width / 2.0
        
        /// ImageView中心点X的坐标(以按钮左上角为原点的坐标系)
        let imageCenterX: CGFloat = btnCenterX - titleW / 2.0
        
        /// titleLabel中心点X的坐标(以按钮左上角为原点的坐标系)
        let titleCenterX: CGFloat = btnCenterX + imageW / 2.0
        
        /// 设置图文偏移(UIEdgeInsets注释):
        /// (1)top       为正数的时候，是往下偏移，为负数的时候往上偏移
        /// (2)left      为正数的时候往右偏移，为负数的时候往左偏移
        /// (3)bottom    为正数的时候往上偏移，为负数的时候往下偏移
        /// (4)right     为正数的时候往左偏移，为负数的时候往右偏移
        switch self.mode {
            
        case .imageLeft:
            
            /// titleLable偏移
            let tTop: CGFloat = 0.0
            let tLeft: CGFloat = self.space / 2.0
            let tBottom: CGFloat = -tTop
            let tRight: CGFloat = -tLeft
            self.titleEdgeInsets = UIEdgeInsets.init(top: tTop, left: tLeft, bottom: tBottom, right: tRight)
            
            /// imageView偏移
            let iTop: CGFloat = 0.0
            let iLeft: CGFloat = -(self.space / 2.0)
            let iBottom: CGFloat = -iTop
            let iRight: CGFloat = -iLeft
            self.imageEdgeInsets = UIEdgeInsets.init(top: iTop, left: iLeft, bottom: iBottom, right: iRight)
            
        case .imageRight:
            
            /// titleLable偏移
            let tTop: CGFloat = 0.0
            let tLeft: CGFloat = -(imageW + self.space / 2.0)
            let tBottom: CGFloat = -tTop
            let tRight: CGFloat = -tLeft
            self.titleEdgeInsets = UIEdgeInsets.init(top: tTop, left: tLeft, bottom: tBottom, right: tRight)
            
            /// imageView偏移
            let iTop: CGFloat = 0.0
            let iLeft: CGFloat = titleW + self.space / 2.0
            let iBottom: CGFloat = -iTop
            let iRight: CGFloat = -iLeft
            self.imageEdgeInsets = UIEdgeInsets.init(top: iTop, left: iLeft, bottom: iBottom, right: iRight)
            
        case .imageTop:
            
            /// titleLable偏移
            let tTop: CGFloat = imageH / 2.0 + self.space / 2.0
            let tLeft: CGFloat = -(titleCenterX - btnCenterX)
            let tBottom: CGFloat = -tTop
            let tRight: CGFloat = -tLeft
            self.titleEdgeInsets = UIEdgeInsets.init(top: tTop, left: tLeft, bottom: tBottom, right: tRight)
            
            /// imageView偏移
            let iTop: CGFloat = -(titleH / 2.0 + self.space / 2.0)
            let iLeft: CGFloat = btnCenterX - imageCenterX
            let iBottom: CGFloat = -iTop
            let iRight: CGFloat = -iLeft
            self.imageEdgeInsets = UIEdgeInsets.init(top: iTop, left: iLeft, bottom: iBottom, right: iRight)
            
        case .imageBottom:
            
            /// titleLable偏移
            let tTop: CGFloat = -(imageH / 2.0 + self.space / 2.0)
            let tLeft: CGFloat = -(titleCenterX - btnCenterX)
            let tBottom: CGFloat = -tTop
            let tRight: CGFloat = -tLeft
            self.titleEdgeInsets = UIEdgeInsets.init(top: tTop, left: tLeft, bottom: tBottom, right: tRight)
            
            /// imageView偏移
            let iTop: CGFloat = titleH / 2.0 + self.space / 2.0
            let iLeft: CGFloat = btnCenterX - imageCenterX
            let iBottom: CGFloat = -iTop
            let iRight: CGFloat = -iLeft
            self.imageEdgeInsets = UIEdgeInsets.init(top: iTop, left: iLeft, bottom: iBottom, right: iRight)
        }
    }
}
