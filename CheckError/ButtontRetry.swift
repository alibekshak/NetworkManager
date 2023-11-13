//
//  ButtontRetry.swift
//  CheckError
//
//  Created by Apple on 10.11.2023.
//

import SwiftUI

struct ButtontRetry: View {
    
    var retryAction: () -> Void
    
    var body: some View {
        Button(action: retryAction){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(width: 190, height: 40)
                    .foregroundColor(Color.black).opacity(0.4)
                
                Text("Retry")
                    .foregroundColor(Color(.white))
                    .bold()
                    .font(Font.system(size: 20, design: .serif))
            }
        }
    }
}

struct ButtontRetry_Previews: PreviewProvider {
    static var previews: some View {
        ButtontRetry(retryAction: {})
    }
}
