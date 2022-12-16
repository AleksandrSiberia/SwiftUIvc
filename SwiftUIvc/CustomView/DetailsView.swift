//
//  DetailsView.swift
//  SwiftUIvc
//
//  Created by Александр Хмыров on 16.12.2022.
//

import Foundation
import SwiftUI


struct DetailsView: View {

    private var model: ModelForList

    var body: some View {

        self.model.image
            .resizable()
            .aspectRatio(contentMode: .fit)


    }

    init(model: ModelForList) {

        self.model = model
    }
}
