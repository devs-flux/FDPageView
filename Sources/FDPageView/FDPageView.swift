//
//  FDPageView.swift
//  FDPageViewMaster
//
//  Created by Mahesh Rathod on 07/08/21.
//  Copyright © 2020 Flux Developers. All rights reserved.

import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct FDPageView: View {
    @Binding var currentTab:Int
    var style:Style?
    var viewHeight:CGFloat
    
    
    /// Required all parameters
    /// - Parameters:
    ///   - currentTab: current tab must be int
    ///   - style: Required all parameters of style
    ///   - viewHeight: view height
    public init(currentTab:Binding<Int>,style:Style,viewHeight:CGFloat) {
        self._currentTab = currentTab
        self.style = style
        self.viewHeight = viewHeight
    }
    
public var body: some View {
        ScrollView {
            HStack {
                ForEach(0..<style!.pages){
                    index in
                    Image(currentTab == index ? style!.selectedItemImage : style!.unSelectedItemImage )
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor((currentTab == index ) ? style!.selectedItemColor : style!.unSelectedItemColor)
                        .frame(width: style!.width, height: style!.height)
                }
            }
        }.frame(height: viewHeight)
    }
}

