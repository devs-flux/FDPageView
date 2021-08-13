
//  Style.swift
//  FDPagecontroller
//
//  Created by Mahesh Rathod on 07/08/21.
//  Copyright © 2020 Flux Developers. All rights reserved.

import Foundation
import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct Style {
    
    var pages:Int = 3
    var width:CGFloat = 12
    var height:CGFloat = 12
    var selectedItemImage:String = ""
    var unSelectedItemImage:String = ""
    var selectedItemColor:Color = Color.green
    var unSelectedItemColor:Color = Color.gray
        
    //MARK:- Style With Selected & UnSelected type
    /// - Parameters:
    ///   - pages: Total page count
    ///   - width: Indicator(tabview) width [Default 12]
    ///   - height: Indicator(tabview) height [Default 12]
    ///   - selectedItemImage: Selected tab icon (must be image)
    ///   - unSelectedItemImage: Unselected tab icon (must be image)
    ///   - selectedItemColor: Selected tab color
    ///   - unSelectedItemColor: Unselected tab color 
    public init(pages:Int,
         width:CGFloat,
         height:CGFloat,
         selectedItemImage:String,
         unSelectedItemImage:String,
         selectedItemColor:Color,
         unSelectedItemColor:Color
        )
    {
        self.pages = pages
        self.width = width
        self.height = height
        self.selectedItemImage = selectedItemImage
        self.unSelectedItemImage = unSelectedItemImage
        self.selectedItemColor = selectedItemColor
        self.unSelectedItemColor = unSelectedItemColor
    }
    
}
