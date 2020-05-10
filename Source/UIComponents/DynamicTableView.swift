//
//  DynamicTableView.swift
//  HelperKit
//
//  Created by Yulia Novikova on 5/10/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

public class DynamicTableView: UITableView {
    
    public override var contentSize:CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    public override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}
