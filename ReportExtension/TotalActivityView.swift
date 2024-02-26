//
//  TotalActivityView.swift
//  ReportExtension
//
//  Created by KK  on 18/07/23.
//

import SwiftUI

struct TotalActivityView: View {
    
    var deviceActivityReportDetails : DeviceActivityReportDetails
    
    var body: some View {
        
        
        VStack {
            Text("Screen Time")
            Text(deviceActivityReportDetails.totalActivity)
            List(deviceActivityReportDetails.apps) { app in
                HStack {
                    Text(app.appName)
                    Spacer()
//                    Text(String(app.noOfPickups))
//                    Text(String(app.duration))
                    Text((app.duration.timeFormatted()))
//                    Text("| \(String(app.duration.formatted()))")


                }.padding()
            }
        }
    }
}

// In order to support previews for your extension's custom views, make sure its source files are
// members of your app's Xcode target as well as members of your extension's target. You can use
// Xcode's File Inspector to modify a file's Target Membership.

//struct TotalActivityView_Previews: PreviewProvider {
//    static var previews: some View {
//        TotalActivityView(totalActivity: "1h 23m", deviceActivityReportDetails: <#DeviceActivityReportDetails#>)
//    }
//}
