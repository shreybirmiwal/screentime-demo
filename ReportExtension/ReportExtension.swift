//
//  ReportExtension.swift
//  ReportExtension
//
//  Created by KK  on 18/07/23.
//

import DeviceActivity
import SwiftUI

@main
struct ReportExtension: DeviceActivityReportExtension {
    var body: some DeviceActivityReportScene {
        // Create a report for each DeviceActivityReport.Context that your app supports.
        TotalActivityReport { totalActivity in
            return TotalActivityView(deviceActivityReportDetails: totalActivity)
        }
        // Add more reports here...
    }
}
