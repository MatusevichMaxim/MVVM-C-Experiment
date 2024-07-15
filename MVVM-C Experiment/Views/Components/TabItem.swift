//
//  TabItem.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import SwiftUI

enum TabItem: Int, CaseIterable {
    case home = 0
    case calendar
    case settings
    
    @ViewBuilder
    var itemLabel: some View {
        switch self {
        case .home:
            Label("Home", systemImage: "house")
        case .calendar:
            Label("Calendar", systemImage: "calendar")
        case .settings:
            Label("Settings", systemImage: "gearshape")
        }
    }
}
