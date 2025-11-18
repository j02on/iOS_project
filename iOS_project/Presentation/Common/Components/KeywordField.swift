import SwiftUI

struct KeywordField : View {
    var text : String
    var body : some View {
        VStack {
            Text(text)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Colors.Orange.o400)
                .padding(.horizontal, 16)
                .padding(.vertical, 5)
        }
        .background(
            RoundedRectangle(cornerRadius: 100)
                    .fill(Colors.Orange.o100))
        .overlay(
            RoundedRectangle(cornerRadius: 100)
                .stroke(Colors.Orange.o400, lineWidth: 1)
        )
    }
}
