//
//  ContentView.swift
//  WeatherApp
//
//  Created by Emil Thomas Levin on 6/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            WeatherView()
                .navigationBarTitle("Weather App by ETL")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
