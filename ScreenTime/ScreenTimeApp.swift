//
//  ScreenTimeApp.swift
//  ScreenTime
//
//  Created by KK  on 18/07/23.
//

import SwiftUI
import DeviceActivity
import FamilyControls


@main
struct ScreenTimeApp: App {
    let center = AuthorizationCenter.shared
    @State private var context: DeviceActivityReport.Context = .init(rawValue: "Total Activity")
    @State private var filter = DeviceActivityFilter(
        segment: .daily(
            during: Calendar.current.dateInterval(
               of: .day, for: .now
            )!
        ),
        users: .all,
        devices: .init([.iPhone, .iPad])
    )
    
    
    var body: some Scene {
        WindowGroup {
            ZStack {
//                STProgressView()
                DeviceActivityReport(context, filter: filter)
            }
                .onAppear {
                    Task {
                        do {
                            try await center.requestAuthorization(for: .individual)
                        } catch {
                            print("Failed to enroll KK with error: \(error)")
                        }
                    }
                }
        }
    }
}
