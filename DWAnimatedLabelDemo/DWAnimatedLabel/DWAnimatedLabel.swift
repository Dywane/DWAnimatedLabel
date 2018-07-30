//
//  DWAnimatedLabel.swift
//  DWAnimatedLabel
//
//  Created by dywanedu on 2018/7/20.
//  Copyright © 2018年 dywanedu. All rights reserved.
//

import UIKit

public enum DWAnimationType {
    case none
    case typewriter
    case shine
    case fade
    case wave
} 

open class DWAnimatedLabel: UILabel {

    // MARK: - Public Propertis
    open var animationType = DWAnimationType.none {
        didSet {
            _animator = DWAnimator(animationType: animationType, duration: _duration)
            _animator?.label = self
        }
    }
    open override var text: String? {
        didSet {
            _animator?.label = self
        }
    }
    open var placeHolderColor: UIColor?
    
    // MARK: - Private Properties
    private(set) var placeHolderView: UIView?
    private(set) var _duration: TimeInterval = 4.0
    private var _hollowLabel: DWHollowLabel?
    private var _animator: DWAnimator?
    
    open func startAnimation(duration: TimeInterval, nextText: String? = nil,_ completion:(() -> Void)?) {
        guard let animator = _animator else {
            return
        }
        if text == nil && nextText == nil {
            return
        } else if nextText != nil {
            text = nextText
        }
        if animationType == .wave {
            placeHolderView = UIView(frame: bounds)
            placeHolderView?.backgroundColor = placeHolderColor ?? .lightGray
            placeHolderView?.layer.masksToBounds = true
            addSubview(placeHolderView!)
            
            _hollowLabel = DWHollowLabel(frame: bounds)
            _hollowLabel?.text = text
            _hollowLabel?.textAlignment = textAlignment
            _hollowLabel?.font = font
            _hollowLabel?.fillColor = backgroundColor ?? .white
            addSubview(_hollowLabel!)
        }
        
        _duration = duration
        animator.duration = duration
        animator.label = self
        animator.startAnimation(completion)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
} 
