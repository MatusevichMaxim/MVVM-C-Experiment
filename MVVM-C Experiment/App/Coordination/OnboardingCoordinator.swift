//
//  OnboardingCoordinator.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import SwiftUI

final class OnboardingCoordinator {
    private let setRootView: (AnyView) -> Void
    
    init(setRootView: @escaping (AnyView) -> Void) {
        self.setRootView = setRootView
    }
    
    private func finishOnboarding() {
        let mainCoordinator = MainCoordinator(setRootView: setRootView)
        mainCoordinator.launch()
    }
}

extension OnboardingCoordinator: Coordination {
    func launch() {
        
    }
}
