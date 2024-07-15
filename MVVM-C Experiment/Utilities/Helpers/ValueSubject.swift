//
//  ValueSubject.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import Combine

public typealias ValueSubject<T> = CurrentValueSubject<T, Never>
