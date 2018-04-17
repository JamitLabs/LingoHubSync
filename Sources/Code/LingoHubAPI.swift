//
//  Created by Cihat Gündüz on 17.04.18.
//  Copyright © 2018 Jamit Labs. All rights reserved.
//

import Foundation
import Moya

public enum LingoHubAPI {
    case projects
    case project(account: String, project: String)
    case resources(account: String, project: String)
    case resourceDown(account: String, project: String, filename: String)
    case resourceUp(account: String, project: String, importSettings: ImportSettings?, path: String?, fileData: Data)
}

extension LingoHubAPI: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.lingohub.com/v1")!
    }

    public var path: String {
        switch self {
        case .projects:
            return "/projects"

        case let .project(account, project):
            return "\(account)/projects/\(project)"

        case let .resources(account, project), let .resourceUp(account, project, _, _, _):
            return "\(account)/projects/\(project)/resources"

        case let .resourceDown(account, project, filename):
            return "\(account)/projects/\(project)/resources/\(filename)"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .projects, .project, .resources, .resourceDown:
            return .get

        case .resourceUp:
            return .post
        }
    }

    public var sampleData: Data {
        return Data()
    }

    public var task: Task {
        switch self {
        case .resourceUp(_, _, importSettings, path, fileData):
            let parameters: [String: Any?] = [
                "file": fileData,
                "path": path,
                "source:createNew": importSettings?.sourceCreateNew,
                "source:updateExisting": importSettings?.sourceUpdateExisting,
                "source:deactivateMissing": importSettings?.sourceDeactivateMissing,
                "target:createNew": importSettings?.targetCreateNew,
                "target:updateExisting": importSettings?.targetUpdateExisting,
                "target:deactivateMissing": importSettings?.targetDeactivateMissing
            ]
            return .requestParameters(parameters: parameters, encoding: JSONEncoding.default)

        default:
            .requestPlain
        }
    }

    public var headers: [String : String]? {
        <#code#>
    }
}
