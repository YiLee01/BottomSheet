//
//  BottomSheet+BackgroundBlur.swift
//
//  Created by Lucas Zischka.
//  Copyright © 2022 Lucas Zischka. All rights reserved.
//

import SwiftUI

public extension BottomSheet {
    
    /// Adds a fullscreen blur layer below the BottomSheet.
    ///
    /// The opacity of the layer is proportional to the height of the BottomSheet.
    /// The material can be changed using the `.backgroundBlurMaterial()` modifier.
    ///
    /// - Parameters:
    ///   - bool: A boolean whether the option is enabled.
    ///
    /// - Returns: A view that has a blur layer below the BottomSheet.
    func enableBackgroundBlur(_ bool: Bool = true) -> BottomSheet {
        self.configuration.isBackgroundBlurEnabled = bool
        return self
    }
    
    /// Changes the material of the blur layer.
    ///
    /// Changing the material does not affect whether the blur layer is shown.
    /// To toggle the blur layer please use the `.enableBackgroundBlur()` modifier.
    ///
    /// - Parameters:
    ///   - material: The new material.
    ///
    /// - Returns: A view with a different material of the blur layer.
    func backgroundBlurMaterial(_ material: VisualEffect) -> BottomSheet {
        self.configuration.backgroundBlurMaterial = material
        return self
    }
    
    /// Changes the full screen background's opacity for auto.
    func enableBackgroundOpacityAutoChange(_ bool: Bool = true) -> BottomSheet {
        self.configuration.isBackgroundOpacityAutoChange = bool
        return self
    }
    
    /// 全屏背景颜色
    func fullScreenColor(_ color: Color = Color.black.opacity(0.7)) -> BottomSheet {
        self.configuration.fullScreenBackgroundColor = color
        return self
    }
}
