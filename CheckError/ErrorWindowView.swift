//
//  ErrorWindowView.swift
//  CheckError
//
//  Created by Apple on 10.11.2023.
//

import SwiftUI

struct ErrorWindowView: View {
        
    let retryAction: () -> Void
    
    var body: some View {
        ZStack{
            Color(.red).opacity(0.1)
            VStack(spacing: 16){
                Image(systemName: "wifi.slash")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                VStack(spacing: 4){
                    Text("Something went wrong")
                        .font(Font.system(size: 22, design: .serif))
                    
                    Text("Try again")
                        .font(Font.system(size: 18, design: .serif))
                }
                .foregroundColor(Color(.black))
                
                ButtontRetry(retryAction: retryAction)
            }
        }
        .ignoresSafeArea()
    }
}

struct ErrorWindowView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorWindowView(retryAction: {})
    }
}
