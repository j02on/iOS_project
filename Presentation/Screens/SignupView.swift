import SwiftUI

struct SignupView : View {
    @State private var id: String = ""
    @State private var password: String = ""
    @State private var authCode: String = ""
    @State private var email: String = ""
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading,spacing: 64) {
                VStack (alignment: .leading, spacing: 16) {
                    Text("회원가입")
                        .font(.system(size: 36, weight: .bold))
                    Text("회원가입 후 서비스를 이용해보세요")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(Colors.Gray.g600)
                }
                VStack(alignment: .leading, spacing: 32) {
                    InputField(label: "아이디", text: $id, placeholder: "아이디를 입력하세요" )
                    InputField(label: "이메일", text: $email, placeholder: "이메일을 입력하세요" )
                    InputField(label: "인증코드", text: $authCode, placeholder: "인증코드를 입력하세요" )
                    InputField(label: "비밀번호", text: $password, placeholder: "비밀번호를 입력하세요", isPwd: true )
                }
                VStack(spacing: 12) {
                    ButtonField(children: "회원가입")
                    NavigationLink(destination: LoginView()) {
                        Text("로그인")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(Color(Colors.Gray.g600))
                    }
                 }
            }
            .padding()
        }
    }
}
