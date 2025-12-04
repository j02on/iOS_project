import SwiftUI

struct ButtonField: View {
    var children: String
    var backgroundColor: Color = Colors.Orange.o500
    var color: Color = Colors.Gray.g100
    var width: CGFloat? = nil
    var height: CGFloat = 52
    var fontSize: CGFloat = 20
    var cornerRadius: CGFloat = 12
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            Text(children)
                .font(.system(size: fontSize))
                .foregroundColor(color)
                .frame(width: width, height: height)
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
    }
}
