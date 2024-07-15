//
//  CalendarTabView.swift
//  MVVM-C Experiment
//
//  Created by Maksim Matusevich on 7/15/24.
//

import SwiftUI

struct CalendarTabView: View {
    @ObservedObject var viewModel: CalendarTabViewModel
    
    var body: some View {
        Text("Calendar Tab")
    }
}

#Preview {
    return CalendarTabView(viewModel: .init())
}

