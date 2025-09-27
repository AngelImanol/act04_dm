//
//  ContentView.swift
//  PrimerParcial_angelimanolvillegasnicanor
//
//  Created by WIN603 on 17/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical,){
            VStack(spacing:0){
                card(logo_bank: "banamex",name_bank: "Banamex",number:"5571 0870 5567 1234",name_client:"Angel Imanol villegas Nicanor",ismaster: false,bgcolor: .red)
                card(logo_bank: "mercado",name_bank: "Mercado Pago",number:"5571 0870 5567 1234",name_client:"Angel Imanol villegas Nicanor",ismaster: true,bgcolor: .blue)
                ZStack{
                    card(logo_bank: "storiwhite",name_bank: "Stori",number:"5571 0870 5567 1234",name_client:"Angel Imanol villegas Nicanor",ismaster: true,bgcolor: .green)
                    card(logo_bank: "nuwhite",name_bank: "NU",number:"5571 0870 5567 1234",name_client:"Angel Imanol villegas Nicanor",ismaster: true,bgcolor: .purple).offset(y:140)
                    card(logo_bank: "hey",name_bank: "HeyBanco",number:"5571 0870 5567 1234",name_client:"Angel Imanol villegas Nicanor",ismaster: true,bgcolor: .black).offset(y:280)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
