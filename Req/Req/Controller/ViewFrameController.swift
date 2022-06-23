//
//  ViewFrameController.swift
//  Req
//
//  Created by Choi Inho on 2022/06/23.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder
    func frameRatio(width: CGFloat? = nil, height: CGFloat? = nil, alignment: Alignment? = nil) -> some View {
        if alignment != nil {
            if width != nil && height != nil {
                self.frame(
                    width: UIScreen.main.bounds.width * width! / CGFloat(390),
                    height: UIScreen.main.bounds.height * height! / CGFloat(844),
                    alignment: alignment!
                )
            } else if width == nil {
                self.frame(height: UIScreen.main.bounds.height * height! / CGFloat(844), alignment: alignment!)
            } else if height == nil {
                self.frame(width: UIScreen.main.bounds.width * width! / CGFloat(390), alignment: alignment!)
            } else {
                self
            }
        } else {
            if width != nil && height != nil {
                self.frame(
                    width: UIScreen.main.bounds.width * width! / CGFloat(390),
                    height: UIScreen.main.bounds.height * height! / CGFloat(844)
                )
            } else if width == nil {
                self.frame(height: UIScreen.main.bounds.height * height! / CGFloat(844))
            } else if height == nil {
                self.frame(width: UIScreen.main.bounds.width * width! / CGFloat(390))
            } else {
                self
            }
        }
    }
}
