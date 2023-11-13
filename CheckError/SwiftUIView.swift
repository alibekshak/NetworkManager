//
//  SwiftUIView.swift
//  CheckError
//
//  Created by Apple on 10.11.2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Color(.blue).opacity(0.1)
            VStack(spacing: 15){
                Image(systemName: "wifi")
                    .resizable()
                    .frame(width: 60, height: 50)
                Text("Have internet connection")
                    .font(Font.system(size: 22, design: .monospaced).bold())
            }
        }
        .ignoresSafeArea()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
