import SwiftUI

import SwiftUI
import ComposeApp

@main
struct iOSApp: App {
    init() {
        NativeResponse_iosKt.setNativeResponseProvider(provider: IOSNativeResponseProvider())
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
