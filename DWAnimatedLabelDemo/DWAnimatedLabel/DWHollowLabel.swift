//
//  DWHollowLabel.swift
//  DWAnimatedLabel
//
//  Created by duwei on 2018/7/22.
//  Copyright © 2018年 dywanedu. All rights reserved.
//

import UIKit

class DWHollowLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        textColor = .white
    }
    
    public var fillColor = UIColor.white
    
    override func draw(_ rect: CGRect) {
        super.drawText(in: rect)
        let context = UIGraphicsGetCurrentContext()
        defer {
            context?.restoreGState()
        }
        guard let image = context?.makeImage() else {
            return
        }
        guard let dataProvider = image.dataProvider,
            let imageMask = CGImage(maskWidth: image.width,
                                    height: image.height,
                                    bitsPerComponent: image.bitsPerComponent,
                                    bitsPerPixel: image.bitsPerPixel,
                                    bytesPerRow: image.bytesPerRow,
                                    provider: dataProvider,
                                    decode: image.decode,
                                    shouldInterpolate: true) else {
                                        return
        }
        
        context?.saveGState()
        context?.concatenate(CGAffineTransform(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: rect.height))
        context?.clear(rect)
        context?.clip(to: rect, mask: imageMask)
        context?.setFillColor(fillColor.cgColor)
        context?.fill(bounds)
    }
}
