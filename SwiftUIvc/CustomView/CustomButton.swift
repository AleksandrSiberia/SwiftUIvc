//
//  CustomButton.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 15.12.2022.
//

import Foundation
import SwiftUI


struct CustomButton: View {

    let widthScreen: CGFloat
    let nameLabel: String
    let nameSystemImage: String?



    var body: some View {

        Button(action: {
            print(self.nameLabel)
        },
               label: {

            HStack {
                Text(self.nameLabel)
                Image(systemName: self.nameSystemImage ?? "")
            }
            .frame(maxWidth: self.widthScreen - 40)

        })
        .padding(.bottom, 15)
        .padding(.top, 15)
        .background(Color.blue)
        .foregroundColor(.white)
        .font(.title2)
        .cornerRadius(20)
    }


    init(widthScreen: CGFloat, nameLabel: String, nameSystemImage: String?) {
        self.widthScreen = widthScreen
        self.nameLabel = nameLabel
        self.nameSystemImage = nameSystemImage

    }
}
