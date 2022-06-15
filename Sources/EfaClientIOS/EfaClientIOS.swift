//
//  __PROJECT_NAME__.swift
//  __PROJECT_NAME__
//
//  Created by DB EFA Interns Team on Jun 15, 2022.
//  Copyright © 2022 Deutsche Bank. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
public class EfaClientIOS: UIView {
    let name = "EfaClientIOS loaded"
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        backgroundColor = .lightGray
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let image = UIImage(data: whiteKing)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imageView)
        
        self.addConstraint(NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0))

        let label = UILabel()
        label.text = name
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))

        self.layoutIfNeeded()
    }
}