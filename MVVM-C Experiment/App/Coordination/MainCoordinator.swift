//
//  MainCoordinator.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import SwiftUI

final class MainCoordinator {
    var isWorkoutBuilderPresented = ValueSubject(false)
    
    init(setRootView: @escaping (AnyView) -> Void) {
        self.setRootView = setRootView
    }
    
    private var rootView: AnyView? {
        didSet {
            guard let rootView else { return }
            
            setRootView(rootView)
        }
    }
    
    private let setRootView: (AnyView) -> Void
}

extension MainCoordinator: MainCoordination {
    func launch() {
        let homeTabViewModel = HomeTabViewModel(dialogCoordinator: self)
        let calendarTabViewModel = CalendarTabViewModel()
        let settingsTabViewModel = SettingsTabViewModel()
        
        let viewModel = MainTabViewModel(
            coordinator: self,
            defaultSelectedTab: .home,
            homeTabViewModel: homeTabViewModel,
            calendarTabViewModel: calendarTabViewModel,
            settingsTabViewModel: settingsTabViewModel
        )
        let mainTabView = MainTabView(viewModel: viewModel)
        rootView = AnyView(mainTabView)
    }
}

extension MainCoordinator: DialogCoordination {
    func showDialog() {
        
    }
    
    func hideDialog() {
        
    }
}

