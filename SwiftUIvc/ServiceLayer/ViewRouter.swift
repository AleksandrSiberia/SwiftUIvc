//
//  ViewRouter.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 14.12.2022.
//

import Foundation
import SwiftUI


class ViewRouter: ObservableObject {

    @Published var currentView: Page = .taskOneTwo
}


enum Page {

    case taskOneTwo
    case taskThree
    case taskFour
}
