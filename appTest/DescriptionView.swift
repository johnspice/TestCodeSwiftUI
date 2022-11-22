//
//  DescriptionView.swift
//  appTest
//
//  Created by juan gabriel lopez on 21/11/22.
//

import SwiftUI

struct DescriptionView: View {
    
    
    var gato:GatoModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Name:").font(.title).bold()
                Text(gato.name).font(.title)
            }
            
            gato.image.resizable().padding(50).frame(width: 300,height:300).clipShape(Circle()).overlay(Circle().stroke(Color.black,lineWidth: 4)).shadow(radius: 5)
            HStack {
                Image(systemName: "text.bubble.fill")
                Text("Description:").font(.title).bold()
            }
            
            Text("Se les llama gatos \"orange Tabby\" debido a que poseen el gen T que se encarga de generar el patrón atigrado naranja en su pelaje. Recuerda que estos animales no son de una raza concreta sino que su origen se debe a un patrón de color que se produce en muchas razas de gatos.").padding(30)
        }
       
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(gato:GatoModel(name:"Himalayo",image:Image("himalayo")))
    }
}
