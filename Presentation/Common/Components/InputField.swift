import SwiftUI

struct InputField: View {
    var label: String?
    @Binding var text: String
    var placeholder: String = ""
    var isPwd: Bool = false
    var isError: Bool = false
    var width: CGFloat? = nil
    
    
    @State private var isEyeClose: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            if let label = label {
                Text(label)
                    .font(.system(size: 16, weight: .regular))
            }
            ZStack(alignment: .trailing) {
                Group {
                    if isPwd && isEyeClose {
                        SecureField(placeholder, text:$text)
                    } else {
                        TextField(placeholder, text: $text)
                    }
                }
                .padding(.vertical, 17)
                .padding(.horizontal, 19)
                .background(Colors.Gray.g200)
                .cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Colors.Gray.g300)
                )
                .frame(width: width)
                
                
                if isPwd {
                    Button(action: {
                        isEyeClose.toggle()
                            }) {
                            Image(systemName: isEyeClose ? "eye.slash" : "eye")
                                        .foregroundColor(.gray)
                    }
                    .padding(.trailing, 10)
                }
            }
        }
    }
}
