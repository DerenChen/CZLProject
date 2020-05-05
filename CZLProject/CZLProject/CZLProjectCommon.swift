//
//  CZLProjectCommon.swift
//  CZLProject
//
//  Created by yuzeux on 2020/5/5.
//  Copyright © 2020 strloong. All rights reserved.
//

import Foundation
import UIKit

let czl_iPhoneX: Bool = (UIScreen.czl_screenWidth >= 375 && UIScreen.czl_screenHeight >= 812)

// Status bar height.
let czl_statusBarHeight: CGFloat = czl_iPhoneX ? 44 : 20

let czl_naviContentHeight: CGFloat = 44

let czl_bottomTabBarContentHeigth: CGFloat = 49

let czl_bottomTabBarSpeacing: CGFloat = czl_iPhoneX ? 34 : 0
