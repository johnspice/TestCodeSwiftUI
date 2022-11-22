//
//  ListItemsView.swift
//  appTest
//
//  Created by juan gabriel lopez on 21/11/22.
//

import SwiftUI


private let gatos=[GatoModel(name:"Bengalí",image:Image("bengali")),
                   GatoModel(name:"Gato Carey",image:Image("carey")),
                   GatoModel(name:"Himalayo",image:Image("himalayo")),
                   GatoModel(name:"Taby",image:Image("gato")),
                   GatoModel(name:"Abisinio",image:Image("abisinio")),
                   GatoModel(name:"Munchkin",image:Image("munchkin")),
                   GatoModel(name:"Angora",image:Image("angora"))
                 ]

struct ListItemsView: View {
    var body: some View {
        NavigationView {
            List(gatos,id:\.name){
                item in
                NavigationLink(destination: DescriptionView(gato:item)){
                    itemView(gato:item)
                    
                }
            }
            .navigationTitle("Razas Gatos")
        }
    }
}

struct ListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemsView()
    
    }
}
