import SwiftUI

//Color 변환
extension Color {
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        let length = hexSanitized.count
        let r, g, b: Double

        if length == 6 {
            r = Double((rgb & 0xFF0000) >> 16) / 255
            g = Double((rgb & 0x00FF00) >> 8) / 255
            b = Double(rgb & 0x0000FF) / 255
        } else {
            return nil
        }

        self.init(red: r, green: g, blue: b)
    }
}

struct Colors {
    struct Gray {
        static let g100 = Color(hex: "#ffffff")!
        static let g200 = Color(hex: "#F9F9F9")!
        static let g300 = Color(hex: "#E9E9E9")!
        static let g400 = Color(hex: "#D1D1D1")!
        static let g500 = Color(hex: "#ABABAB")!
        static let g600 = Color(hex: "#7A7A7A")!
        static let g700 = Color(hex: "#5C5C5C")!
        static let g800 = Color(hex: "#0F0F0F")!
        static let g900 = Color(hex: "#000000")!
    }

    struct Orange {
        static let o50  = Color(hex: "#FFF9F1")!
        static let o100 = Color(hex: "#FFF3E1")!
        static let o200 = Color(hex: "#FFD9A3")!
        static let o300 = Color(hex: "#FFC676")!
        static let o400 = Color(hex: "#FFA26B")!
        static let o500 = Color(hex: "#FE8137")!
    }
}
