//
//  MainCoordination.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

protocol MainCoordination: Coordination {
    var isWorkoutBuilderPresented: ValueSubject<Bool> { get set }
}
