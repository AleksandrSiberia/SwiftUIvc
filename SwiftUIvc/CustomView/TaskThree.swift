//
//  TaskThree.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 15.12.2022.
//

import Foundation
import SwiftUI

struct TaskThree: View {

    let screenHeight: CGFloat
    let screenWidth: CGFloat

    @State var textFieldMail: String = ""
    @State var textFieldPassword = ""


    var body: some View {


        VStack {

            Image("Image2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: self.screenWidth/4-3, height: self.screenWidth/4-3 )
                .padding(.bottom, self.screenHeight / 10)



            Section {

                TextField("mail", text: $textFieldMail, onEditingChanged: {
                    $0 ? print("editing") : print("not editing")}) {
                        print("tap enter")
                    }
                TextField("password", text: $textFieldPassword)

            }
            .padding()
            .background(Color.gray)
            .cornerRadius(20)
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .foregroundColor(Color.white)


            CustomButton(widthScreen: self.screenWidth, nameLabel: "authorisation", nameSystemImage: "person")

            CustomButton(widthScreen: self.screenWidth, nameLabel: "register", nameSystemImage: "magsafe.batterypack")

        }
    }



    init(screenHeight: CGFloat, width: CGFloat ) {

        self.screenHeight = screenHeight
        self.screenWidth = width

    }

}
