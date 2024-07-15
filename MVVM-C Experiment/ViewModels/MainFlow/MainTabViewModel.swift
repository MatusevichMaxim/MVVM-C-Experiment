//
//  MainTabViewModel.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import Foundation
import Combine

final class MainTabViewModel: ObservableObject {
    @Published var selectedTab: TabItem
    
    let coordinator: MainCoordination
    let homeTabViewModel: HomeTabViewModel
    let calendarTabViewModel: CalendarTabViewModel
    let settingsTabViewModel: SettingsTabViewModel
    
    init(
        coordinator: MainCoordination,
        defaultSelectedTab: TabItem,
        homeTabViewModel: HomeTabViewModel,
        calendarTabViewModel: CalendarTabViewModel,
        settingsTabViewModel: SettingsTabViewModel
    ) {
        self.coordinator = coordinator
        self.selectedTab = defaultSelectedTab
        self.homeTabViewModel = homeTabViewModel
        self.calendarTabViewModel = calendarTabViewModel
        self.settingsTabViewModel = settingsTabViewModel
        
        subscribe()
    }
    
    private var subscriptions = [Cancellable]()
}

extension MainTabViewModel {
    private func subscribe() {
        subscriptions = [
            coordinator.isWorkoutBuilderPresented.sink { [weak self] _ in
                self?.objectWillChange.send()
            }
        ]
    }
}
