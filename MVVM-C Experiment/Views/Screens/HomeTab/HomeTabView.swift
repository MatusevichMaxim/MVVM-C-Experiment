//
//  HomeTabView.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import SwiftUI

struct HomeTabView: View {
    @ObservedObject var viewModel: HomeTabViewModel
    
    var body: some View {
        Text("Home Tab")
    }
}

#Preview {
    let coordinator = MainCoordinator(setRootView: {_ in })
    
    return HomeTabView(viewModel: .init(dialogCoordinator: coordinator))
}
