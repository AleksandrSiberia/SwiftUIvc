//
//  TaskOneTwo.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 14.12.2022.
//

import Foundation
import SwiftUI




struct TaskOneTwoView: View {


    @State private var statusToggle: Bool = true
    @State private var sliderValue =  100.0

    @State private var editing = false

    @State private var gender: Gender?

    var body: some View {

        VStack(alignment: .center, spacing: 40) {

            Section {

                Text("Первое и второе задание")
                //     .bold()
                //       .font(.system(size: 20))
                //       .font(.system(.largeTitle))
                    .font(.system(.title, design: .monospaced))
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(20)
                    .background(Color.gray)
                    .cornerRadius(30)



                Slider(value: self.$sliderValue, in: 10.0...200.0) {
                    editing in

                    self.editing = editing
                }

                Text("\(sliderValue)")
                    .foregroundColor(editing ? .red : .gray)
            }
            .padding(.bottom, 10)



            VStack {

                VStack {
                    Toggle("Переключатель", isOn: self.$statusToggle)
                        .padding(10)
                        .fontWeight(.regular)

                    Text("Статус выключателя = " + String(self.statusToggle))
                        .font(.system(.callout , weight: .regular))
                }
                .padding(10)
                .background(Color(uiColor: UIColor(named: "Color1") ?? .white))
                .cornerRadius(20)
                .padding(.bottom, 40)




                VStack(spacing: 16) {

                    Text("Выберите пол")
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                        .padding()
                        .multilineTextAlignment(TextAlignment.center)
                }
                .background(Color.cyan)
                .cornerRadius(14)



                HStack(alignment: .center) {

                    Button {
                        self.gender = Gender(gender: "Мужчина")
                    } label: {
                        Text("Мужчина")
                    }
                    .foregroundColor(.blue)



                    Button {
                        self.gender = Gender(gender: "Женщина")
                    } label: {
                        Text("Женщина"
                        )
                    }
                    .foregroundColor(.blue)
                }
                .alert(item: self.$gender) { gender in
                    Alert(title: Text("Вы выбрали \(gender.gender)"), dismissButton: .default(Text("Ok")))
                }
            }


            Section {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                +
                Text(" is")
                    .font(.headline)
                    .foregroundColor(.blue)
                +
                Text(" the coolest")
                    .font(.footnote)
                    .foregroundColor(.green)
            }
        }
        .padding(20)
        .foregroundColor(.gray)
        .cornerRadius(80)
    }
}
