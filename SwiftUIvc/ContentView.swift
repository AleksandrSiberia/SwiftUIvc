//
//  ContentView.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 13.12.2022.
//

import SwiftUI



struct ContentView: View {

    @StateObject var viewRouter: ViewRouter


    
    var body: some View {

        GeometryReader { geometry in

            VStack {



                Spacer()

                switch self.viewRouter.currentView {


                case .taskOneTwo:

                TaskOneTwoView()


                case .taskThree:

                    TaskThree(screenHeight: geometry.size.height, width: geometry.size.width)
            }
                Spacer()



                HStack {

                    CustomTabBarIcon(height: geometry.size.height / 28, width: geometry.size.width / 5, nameImage: "lightbulb", text: "Задание 1-2", viewRouter: self.viewRouter, assignedPage: .taskOneTwo)

                    CustomTabBarIcon(height: geometry.size.height / 28, width: geometry.size.width / 5, nameImage: "lightbulb.fill", text: "Задание 3", viewRouter: self.viewRouter, assignedPage: Page.taskThree)

                }

                .frame(width: geometry.size.width, height: geometry.size.height / 8)
                .background(Color("TabBarBackground"))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
