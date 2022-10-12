//
//  ProgrammingServices.swift
//  BarterApp
//
//  Created by Karan Peo on 9/26/22.
//

import SwiftUI

struct ProgrammingServices: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color("custom cyan"))
                .frame(width: 800, height: 250)
                .position(x: 0, y: 0)
                .overlay(Text(" IT & Internet\n Services")
                    .frame(width: 120, height: 70)
                    .font(.headline)
                    .position(x: 80, y:40))
            
            Image("programming")
                .resizable()
                .frame(width: 200, height:150)
                .position(x:275, y: -13)
            
            ScrollView(.vertical, showsIndicators: true, content: {
                VStack(alignment: .center, spacing: 1, content:{
                    ForEach(0..<20){ index in
                        Rectangle()
                            .fill(Color.clear)
                            .frame(width: 370, height: 70)
                            .overlay(Image(systemName: "star").position(x: 35, y: 35))
                            .overlay(Text("Business \(index)"))
                    }
                })
            }).frame(height: 520)

        }
    }
}

struct ProgrammingServices_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingServices()
    }
}
