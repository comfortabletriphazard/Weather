//
//  DetailView.swift
//  Weather
//
//  Created by Michael McAlarney on 05/06/2022.
//

import SwiftUI

struct DetailView: View {
    
    @State var isPopoverShowing = false
    var data: WeatherData
    
    var body: some View {
        VStack {
            Text(data.day)
            Button(action: {
                isPopoverShowing = true
            }) {
                Text("Show Popover")
            }
            .padding()
            .sheet(isPresented: $isPopoverShowing) {
            Text("H \(data.high)ºC" + "     L \(data.low)ºC")
        }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
        
    }
}
