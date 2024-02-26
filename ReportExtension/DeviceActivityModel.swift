//
//  DeviceActivityModel.swift
//  ReportExtension
//
//  Created by KK  on 18/07/23.
//

import Foundation
import SwiftUI
import UIKit

struct DeviceActivityReportDetails {
//    let totalDuration: TimeInterval
    let totalActivity: String
    let category : String
    let apps: [DeviceActivityModel]
}


struct DeviceActivityModel: Identifiable {
    
    var id: String
    var appName: String
    var duration: TimeInterval
    var noOfPickups: Int
}
extension TimeInterval{
    
    func stringFromTimeInterval() -> String {
        let time = NSInteger(self)
        let minutes = (time / 60) % 60
        let hours = (time / 3600)
        return String(format: "%0.2d:%0.2d",hours,minutes)
    }
    
    func timeFormatted() -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.day, .hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        formatter.zeroFormattingBehavior = .dropAll

            return formatter.string(from: self) ?? "0:00:00"
        }
}

