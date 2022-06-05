//
//  ContentView.swift
//  Weather
//
//  Created by Michael McAlarney on 05/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView { //View that controls other views
            List(DataModel.data, id: \.self) {
                object in
                HStack {
                    Image(systemName: object.icon)
                    Text("\(object.high)ºC")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day, destination: DetailView(data: object))
                    //Navigation Link makes the arrows beside each list item to a new view
                }
            }
            .navigationTitle("Gold Coast")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
