//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Ahmet Burak Dinc on 6.03.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                print(" ")
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
        }
            }
}
  
#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let framework: Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }.padding()
    }
}
