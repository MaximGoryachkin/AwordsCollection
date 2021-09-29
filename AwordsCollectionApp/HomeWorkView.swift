//
//  HomeWorkView.swift
//  AwordsCollectionApp
//
//  Created by Максим Горячкин on 29.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct HomeWorkView: View {
    let awards = Award.getAwards()
    
    var body: some View {
        CustomGridView(items: awards, columns: 2) { award, withSize in
            VStack {
                award.awardView
                Text(award.title)
            }
            .padding()
            .frame(width: withSize, height: withSize)
        }
    }
}

struct HomeWorkView_Previews: PreviewProvider {
    static var previews: some View {
        HomeWorkView()
    }
}
