//
//  MapView.swift
//  UserLocation
//
//  Created by Lori Rothermel on 4/4/23.
//

import SwiftUI
import MapKit


struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    
    
    
    
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemPink))
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
