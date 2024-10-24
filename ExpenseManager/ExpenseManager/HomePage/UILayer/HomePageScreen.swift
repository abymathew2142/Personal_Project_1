//
//  HomePage.swift
//  ExpenseManager
//
//  Created by Aby Mathew on 24/10/24.
//

import SwiftUI

struct Product: Identifiable {
    let id: UUID = UUID()
    var title: String = ""
    var price: Decimal
}

struct HomePageScreen: View {
    
    @State private var items = [Product]()
    @State private var isLoading = false
    
    @State private var isPresenting = false
    
    var body: some View {
        ZStack(alignment: .bottom){
           
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(items) { item in
                            // details page navigation
                            NavigationLink(destination: ItemDetailsScreen(item: item)){
                                Text(item.title)
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color(.systemGray5))
                                    .cornerRadius(8)
                                    .padding(.horizontal)
                            }
                            
                            // Load more items when this one appears
                            //                        if item == items.last {
                            //                            //                           // ProgressView()
                            //                            //                                .onAppear {
                            //                            //                                    loadMoreItems()
                            //                            //                                }
                            //                        }
                        }
                    }
                }
                
            }
            Button(action: {
                isPresenting.toggle()
            }, label: {
                Text("Button")
            })
        }
        .navigationTitle("Home")
        .onAppear(){
            // Function to load initial items
            loadInitialItems()
            
        }
        
        .sheet(isPresented: $isPresenting, content: {
            ProfileScreen()
        })
    }
    
    private func loadInitialItems() {
        for i in 1...20 {
            let price = Decimal(Double.random(in: 1.00...100.00))
            let product = Product(title: "Item \(i)",
                                  price: price)
            items.append(product)
        }
    }
    
    private func loadMoreItems() {
        print("Load more items")
    }
}

//#Preview {
//    HomePageScreen()
//}
