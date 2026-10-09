// SPDX-License-Identifier: GPL-2.0-or-later
import Foundation

protocol HuskLocalizedError: Error {
    var huskErrorDescription: String { get }
}

extension Error {
    var huskLocalizedDescription: String {
        (self as? HuskLocalizedError)?.huskErrorDescription ?? localizedDescription
    }
}
