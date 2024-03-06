//
//  DetailView.swift
//  Apple-Framework
//
//  Created by Ahmet Burak Dinc on 6.03.2024.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {}label:{
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label)) // label: black in white mode, white in black mode.
                        .imageScale(.large)
                        .frame(width: 44, height: 44 )
                }

            }
            .padding()
            
            Spacer() 
            FrameworkTitleView(framework: MockData.frameworks[0])
            DetailTextView()
            Spacer()
            
            AFButton(backgroundColor: .red, textColor: .white, title: "Learn About App")
            
            
        }
        
    }
    
}
  
#Preview {
    DetailView()
}

struct DetailTextView: View {
    var body: some View {
        Text("But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ")
            .font(.body)
            .padding()
        
    }

}



