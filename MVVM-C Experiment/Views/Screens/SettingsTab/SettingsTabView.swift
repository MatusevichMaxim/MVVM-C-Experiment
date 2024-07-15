//
//  SettingsTabView.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import SwiftUI

struct SettingsTabView: View {
    @ObservedObject var viewModel: SettingsTabViewModel
    
    var body: some View {
        Text("Settings Tab")
    }
}

#Preview {
    return SettingsTabView(viewModel: .init())
}
