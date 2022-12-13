//
//  ContentView.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 13.12.2022.
//

import SwiftUI


// Задача 1

struct Gender: Identifiable {

    var id: String { gender }
    var gender: String
}


struct ContentView: View {

    @State private var statusToggle: Bool = true
    @State private var sliderValue =  100.0

    @State private var editing = false

    @State private var gender: Gender?


    var body: some View {

        VStack(alignment: .center, spacing: 40) {

            Section {

                Slider(value: self.$sliderValue, in: 10.0...200.0) {
                    editing in

                    print(editing)
                    self.editing = editing
                }

                Text("\(sliderValue)")
                    .foregroundColor(editing ? .red : .gray)
            }


            Form {

                Section {
                    Toggle("Переключатель", isOn: self.$statusToggle)
                        .padding(10)

                    Text("Статус выключателя = " + String(self.statusToggle))
                }

                VStack(spacing: 16) {

                    Text("Выберите пол")
                }

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
        }

        .padding(20)
        .foregroundColor(.gray)
        .cornerRadius(80)


    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
