//
//  card.swift
//  PrimerParcial_angelimanolvillegasnicanor
//
//  Created by WIN603 on 17/09/25.
//

import SwiftUI

struct card: View {
    @State private var angulo: Angle = .degrees(0)
    @State private var visible: Bool = true
    @State private var colorinvalid: Color = .gray
    @State private var coloreal: Color = .clear
    @State private var height: CGFloat = 150
    
    let logo_bank: String
    let name_bank: String
    let number: String
    let name_client: String
    let ismaster: Bool
    var bgcolor: Color
    
    var body: some View {
        ZStack(){
            HStack(){
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text(name_bank)
                        Image(logo_bank)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                    if visible{
                        VStack(alignment: .leading) {

                            Text(number)

                            Text(name_client)

                        }.padding(.top, 10)
                    }
                    
                    HStack(spacing: 15) {
                        Button(action: {
                            withAnimation(.easeInOut(duration: 1)) {

                                if visible {
                                    angulo -= .degrees(180)
                                    coloreal = colorinvalid
                                    visible = false
                                    height = 100
                                } else {
                                    visible = true
                                    angulo += .degrees(180)
                                    coloreal = bgcolor
                                    height = 150
                                }

                            }
                        }, label: {
                            Image(systemName: "lock")

                            Text("Bloquear")
                        })
                        

                    }

                    .padding(.top, 10)
                }
                Spacer()
                VStack(){
                    Image("contact1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Spacer()
                    ZStack(){
                        if ismaster{
                            Circle()
                                .stroke(Color.white,lineWidth: 3)
                                .fill(Color.blue)
                                .frame(width: 20,height: 20)

                           
                            Circle()
                                .stroke(Color.white,lineWidth: 3)
                                .fill(Color.orange)
                                .frame(width: 20,height: 20)
                                .offset(x:15)
                        }else{
                            Circle()
                                .stroke(Color.black,lineWidth: 3)
                                .fill(Color.black)
                                .frame(width: 30,height: 30)
                            Text("VISA").bold().foregroundStyle(.white).font(.system(size: 10)).italic()
                        }
                        
                    }
                    if ismaster{
                        Text("masterCard").bold().foregroundStyle(.white).font(.system(size: 10)).offset(x:5)
                    }
                }
            }
            
        }
        .padding(10)
        .frame(width: 350, height: height)
        .background(coloreal)
        .cornerRadius(20)
        .foregroundStyle(.white)
        .rotation3DEffect(
            angulo,
            axis: (x: 0, y: 1, z: 0),
            perspective: 0.8
        )
        .onAppear {
            coloreal = bgcolor
        }

    }
}

#Preview {
    card(logo_bank: "mercado",name_bank: "Mercado Pago",number:"5571 0870 5567 1234",name_client:"Angel Imanol villegas Nicanor",ismaster: false,bgcolor: .blue)
}
