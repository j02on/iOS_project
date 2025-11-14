import SwiftUI

struct PlanPostDto : Identifiable {
    let id: Int
    let title: String
    let content: String
    let keyword: [String]
    let date: String
}
