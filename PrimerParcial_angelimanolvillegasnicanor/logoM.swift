//
//  logoM.swift
//  PrimerParcial_angelimanolvillegasnicanor
//
//  Created by WIN603 on 17/09/25.
//

import SwiftUI

struct logoM: View {
    var body: some View {
        
        ZStack(){
            Circle()
                .stroke(Color.white,lineWidth: 3)
                .fill(Color.blue)
                .frame(width: 20,height: 20)

           
            Circle()
                .stroke(Color.white,lineWidth: 3)
                .fill(Color.orange)
                .frame(width: 20,height: 20)
                .offset(x:15)
        }
        Text("masterCard").bold().foregroundStyle(.white).font(.system(size: 10)).offset(x:5)
    }
}

#Preview {
    logoM()
}
