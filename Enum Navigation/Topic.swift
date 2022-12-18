//
//  Topic.swift
//  Enum Navigation
//
//  Created by Simran Preet Narang on 2022-12-18.
//

import Foundation
import SwiftUI

enum Topic: String, Hashable, CaseIterable, Identifiable, View {
    
    var id: String {
        self.rawValue
    }
    
    case topic1 = "Green Room"
    case topic2 = "Stewart Lynch"
    case topic3 = "Rainbow"
    case topic4 = "Inukshuk"
    
    var body: some View {
        switch self {
        case .topic1:
            Topic1View(title: self.rawValue)
        case .topic2:
            Topic2View(title: self.rawValue)
        case .topic3:
            Topic3View(title: self.rawValue, colors: [.red, .green, .pink, .purple, .orange])
        case .topic4:
            Topic4View(title: self.rawValue, imageName: "Inukshuk")
        }
    }
}
