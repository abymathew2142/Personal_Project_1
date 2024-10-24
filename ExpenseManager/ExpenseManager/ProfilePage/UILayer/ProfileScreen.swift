//
//  ProfilePage.swift
//  ExpenseManager
//
//  Created by Aby Mathew on 24/10/24.
//

import SwiftUI

struct ProfileScreen: View {
    @Environment(\.dismiss) var dismissed
    
    var body: some View {
        
        VStack {
            Text("profile screen")

                        .font(.largeTitle)
                        .padding()

                    // Button to dismiss the modal
                    Button(action: {
                        dismissed() // Call the dismiss function to close the modal
                    }) {
                        Text("Close Modal")
                            .font(.headline)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
    }
}

//#Preview {
//    ProfileScreen()
//}
