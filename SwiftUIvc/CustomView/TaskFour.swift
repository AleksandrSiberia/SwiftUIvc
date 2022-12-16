//
//  List.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 16.12.2022.
//

import Foundation
import SwiftUI

struct TaskFour: View {

    var array: [ModelForList] = []


    var body: some View {

        List(array, id: \.id) { modelForList in

            HStack {

                modelForList.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.trailing, 12)

                Text(modelForList.id)
            }
        }
    }



    mutating func addModel() {

        (1...9).forEach { self.array.append(ModelForList(nameFoto: "0" + String($0))) }

    }



    init() {

        self.addModel()
        print("🎀", self.array)

    }
}



struct TaskFour_Previews: PreviewProvider {
 
    static var previews: some View {
        TaskFour()
    }
}
