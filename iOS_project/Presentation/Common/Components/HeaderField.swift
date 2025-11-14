import SwiftUI

struct HeaderField : View {
    var body : some View {
        VStack {
            Image("AppLogo")
                .resizable()
                .frame(width: 84, height: 19)
                .padding(.bottom,30)
        }
        .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
        .overlay(
            Rectangle()
                .frame(height : 1)
                .foregroundColor(Colors.Gray.g300),
            alignment: .bottom
        )
    }
}
