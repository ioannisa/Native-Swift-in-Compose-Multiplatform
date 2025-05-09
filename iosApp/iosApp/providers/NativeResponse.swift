//
//  NativeResponse.swift
//  iosApp
//
//  Created by Ioannis Anifantakis on 9/5/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import ComposeApp

class IOSNativeResponseProvider: NativeResponseProvider {
    func getNativeResponse(input: Int32) -> Int32 {
        // Native Swift logic; for example, add 100 to the input
        return input + 100
    }
}
