import SwiftUI

struct PostView<AnyView: View> : View {
    var title : String
    var content: String
    var keyword: [String]
    var date: String
    var destination: () -> AnyView
    
    var body : some View {
        NavigationLink(destination: destination) {
            VStack(alignment: .leading,spacing: 24) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(title)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(Colors.Gray.g900)
                    Text(content)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Colors.Gray.g900)
                }
                HStack(spacing: 24) {
                    Text(date)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Colors.Gray.g500)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            Rectangle()
                .frame(height : 1)
                .foregroundColor(Colors.Gray.g300),
            alignment: .bottom
        )
        .padding(.horizontal)
    }
}
