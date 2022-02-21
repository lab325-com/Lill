
import UIKit
import Foundation
import SwiftEntryKit

final class ReportViewPresenter {
    
    static func showReportView() {
        let reportView = ReportView.defaultView()
        
        var attributes = EKAttributes()
        attributes = .centerFloat
        attributes.displayDuration = .infinity
        attributes.screenInteraction = .absorbTouches
        attributes.entryInteraction = .absorbTouches
        attributes.scroll = .disabled
        attributes.positionConstraints.size.width = .constant(value: 280)
        attributes.screenBackground = .color(color: EKColor(rgb: 000000).with(alpha: 0.85))
        attributes.entranceAnimation = .init(
            scale: .init(
                from: 0.9,
                to: 1,
                duration: 0.4,
                spring: .init(damping: 1, initialVelocity: 0)
            ),
            fade: .init(
                from: 0,
                to: 1,
                duration: 0.3
            )
        )
        attributes.exitAnimation = .init(
            scale: .init(
                from: 1,
                to: 0.7,
                duration: 0.3
            ),
            fade: .init(
                from: 1,
                to: 0,
                duration: 0.3
            )
        )
        
        if !SwiftEntryKit.isCurrentlyDisplaying {
            SwiftEntryKit.display(entry: reportView, using: attributes)
        }
    }
}
