//
//  SwiftUIvcApp.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 13.12.2022.
//

import SwiftUI

@main



struct CustomTabBarTempApp: App {

    @StateObject var viewRouter: ViewRouter = ViewRouter()

    var body: some Scene {

        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}



//struct SwiftUIvcApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}
