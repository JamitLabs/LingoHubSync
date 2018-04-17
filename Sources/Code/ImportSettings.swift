//
//  Created by Cihat Gündüz on 17.04.18.
//  Copyright © 2018 Jamit Labs. All rights reserved.
//

import Foundation

public struct ImportSettings {
    public let sourceCreateNew: Bool?
    public let sourceUpdateExisting: Bool?
    public let sourceDeactivateMissing: Bool?
    public let targetCreateNew: Bool?
    public let targetUpdateExisting: Bool?
    public let targetDeactivateMissing: Bool?
}
