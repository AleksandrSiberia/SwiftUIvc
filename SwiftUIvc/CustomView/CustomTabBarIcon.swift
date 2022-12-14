//
//  CustomTabBarIcon.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 14.12.2022.
//

import Foundation
import SwiftUI


struct CustomTabBarIcon: View {


    let height, width: CGFloat
    let nameImage, text: String

    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page


    var body: some View {


        VStack {

            Image(systemName: nameImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: self.width, height: self.height)
                .padding(.top, 10)
            Text(self.text)
                .font(.footnote)
            Spacer()
        }
        .onTapGesture {
            self.viewRouter.currentView = assignedPage
        }
        .foregroundColor(self.viewRouter.currentView == self.assignedPage ? .red : .gray)
        .padding(.horizontal, 7)
    }
}


