//
//  MainTabView.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import SwiftUI

struct MainTabView: View {
    @ObservedObject var viewModel: MainTabViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $viewModel.selectedTab) {
                ForEach(TabItem.allCases, id: \.self) { item in
                    switch item {
                    case .home:
                        HomeTabView(viewModel: viewModel.homeTabViewModel)
                            .tabItem { item.itemLabel }
                            .tag(item.rawValue)
                        
                    case .calendar:
                        CalendarTabView(viewModel: viewModel.calendarTabViewModel)
                            .tabItem { item.itemLabel }
                            .tag(item.rawValue)
                        
                    case .settings:
                        SettingsTabView(viewModel: viewModel.settingsTabViewModel)
                            .tabItem { item.itemLabel }
                            .tag(item.rawValue)
                    }
                }
            }
            
//            ActionSheetView(viewModel: viewModel.actionSheetViewModel)
        }
    }
}

#Preview {
    let coordinator = MainCoordinator(setRootView: {_ in })
    
    return MainTabView(viewModel: .init(
        coordinator: coordinator,
        defaultSelectedTab: .home,
        homeTabViewModel: .init(dialogCoordinator: coordinator),
        calendarTabViewModel: .init(),
        settingsTabViewModel: .init()
    ))
}
