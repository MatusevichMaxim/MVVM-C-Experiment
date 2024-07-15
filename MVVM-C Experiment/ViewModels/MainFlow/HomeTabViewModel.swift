//
//  HomeTabViewModel.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import Foundation
import Combine

final class HomeTabViewModel: ObservableObject {
    init(dialogCoordinator: DialogCoordination) {
        self.dialogCoordinator = dialogCoordinator
    }
    
    private let dialogCoordinator: DialogCoordination
}
