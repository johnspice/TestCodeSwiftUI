//
//  itemView.swift
//  appTest
//
//  Created by juan gabriel lopez on 21/11/22.
//

import SwiftUI

struct itemView: View {
    
    
    var gato:GatoModel
    
    
    var body: some View {
        HStack {
            gato.image.resizable().frame(width: 100,height: 100)
            Text(gato.name)
        }
    }
}

struct itemView_Previews: PreviewProvider {
    static var previews: some View {
        itemView(gato:GatoModel(name:"taby",image:Image("gato"))).previewLayout(.fixed(width: 200, height: 100))
        //previsualizacion en otro dispositivo
        //itemView(gato:GatoModel(name:"taby",image:Image("gato"))).
        
    }
}
