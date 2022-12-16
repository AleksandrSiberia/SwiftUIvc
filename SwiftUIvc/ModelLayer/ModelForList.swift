//
//  ModelForList.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 16.12.2022.
//

import Foundation
import SwiftUI




struct ModelForList: Identifiable {

    var id: String = UUID().uuidString.lowercased()

    private var nameFoto: String

    var image: Image {
        Image(nameFoto)
    }


    init(nameFoto: String) {
        self.nameFoto = nameFoto
    }
}









