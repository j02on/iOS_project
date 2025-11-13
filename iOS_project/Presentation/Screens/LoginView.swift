import SwiftUI

struct LoginView: View {
    @State private var id : String = ""
    @State private var password : String = ""
    
    var body: some View {
        VStack(alignment: .leading,spacing: 64) {
            VStack (alignment: .leading, spacing: 16) {
                Text("로그인")
                    .font(.system(size: 36, weight: .bold))
                Text("로그인 후 Tripick을 이용해보세요")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(Colors.Gray.g600)
            }
            VStack(alignment: .leading, spacing: 32) {
                InputField(label: "아이디", text: $id, placeholder: "아이디를 입력하세요" )
                InputField(label: "비밀번호", text: $password, placeholder: "비밀번호를 입력하세요", isPwd: true )
            }
            ButtonField(children: "로그인")
        }
        .padding()
    }
}
