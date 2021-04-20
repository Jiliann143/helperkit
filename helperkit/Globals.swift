//
//  Globals.swift
//  GameSearcher_MVVM
//
//  Created by Yulia Novikova on 4/20/21.
//

import UIKit

var window: UIWindow {
    (UIApplication.shared.delegate as! AppDelegate).window!
}

func setRootController(_ controller: UIViewController) {
    window.replaceRootViewControllerWith(controller)
}


