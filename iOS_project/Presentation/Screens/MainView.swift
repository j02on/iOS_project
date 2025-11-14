import SwiftUI

struct MainView : View {
    @State private var isAddBtnClick = false
    @State private var planPosts : [PlanPostDto] = [
        PlanPostDto(id: 1, title: "title", content: "content", keyword: ["keyword1", "keyword2"], date: "2024.02.02"),
        PlanPostDto(id: 2, title: "title", content: "content", keyword: ["keyword1", "keyword2"], date: "2024.02.02"),
        PlanPostDto(id: 3, title: "title", content: "content", keyword: ["keyword1", "keyword2"], date: "2024.02.02")
    ]
    var body : some View {
        VStack(alignment: .leading,spacing: 12) {
            Text("여행 계획")
                .font(.system(size: 24, weight: .semibold))
            HStack(spacing: 0) {
                Text("\($planPosts.wrappedValue.count)")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Colors.Orange.o500)
                Text("개")
                    .font(.system(size: 20))
            }
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(planPosts) { post in
                        PostView(title: post.title, content: post.content, keyword: post.keyword, date: post.date, destination: {SignupView()})
                    }
                }
            }
            HStack {
                Spacer()
                Button(action: {isAddBtnClick = true}) {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width:24, height: 24)
                        .foregroundColor(.white)
                }
                .frame(width: 60, height: 60)
                .background(Colors.Orange.o500)
                .cornerRadius(30)
                .navigationDestination(isPresented: $isAddBtnClick) {
                    LoginView()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
    }
}
