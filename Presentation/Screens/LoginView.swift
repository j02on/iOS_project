import SwiftUI

struct LoginView: View {
    @State private var id : String = ""
    @State private var password : String = ""
    @State private var isMain = false
    
    var body: some View {
        VStack(alignment: .leading,spacing: 64) {
            VStack (alignment: .leading, spacing: 16) {
                Text("로그인")
                    .font(.system(size: 36, weight: .bold))
                Text("로그인 후 서비스를 이용해보세요")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(Colors.Gray.g600)
            }
            VStack(alignment: .leading, spacing: 32) {
                InputField(label: "아이디", text: $id, placeholder: "아이디를 입력하세요" )
                InputField(label: "비밀번호", text: $password, placeholder: "비밀번호를 입력하세요", isPwd: true )
            }
            VStack(spacing: 12) {
                ButtonField(children: "로그인", action: { isMain = true })
                    .navigationDestination(isPresented: $isMain) {
                        MainView()
                    }
                NavigationLink(destination: SignupView()) {
                    Text("회원가입")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color(Colors.Gray.g600))
                }
             }
        }
        .padding()
    }
}
