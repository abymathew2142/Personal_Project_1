//
//  ItemDetailsScreen.swift
//  ExpenseManager
//
//  Created by Aby Mathew on 24/10/24.
//

import SwiftUI

struct ItemDetailsScreen: View {
    
    var item: Product
    
    var body: some View {
        Text("Item name \(item.title)")
            .navigationTitle("Detail Screen")
    }
}

//#Preview {
//    ItemDetailsScreen()
//        .previewLayout(.fixed(width: 320, height: 100))
//}
