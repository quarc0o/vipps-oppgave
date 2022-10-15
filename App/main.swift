//
//  main.swift
//  App
//
//  Created by even.gabrielsen@vipps.no on 13/10/2022.
//

#if SWIFTUI
import SwiftUI

SwiftUIApp.main()
#elseif UIKIT
import UIKit

a_ = UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    NSStringFromClass(AppDelegate.self)
)
#else
fatalError("Provide environment variable specifying UI framework; `UIKIT` for UIKit and `SWIFTUI` for SwiftUI. This is done automatically by the predefined build schemes in Xcode.")
#endif
