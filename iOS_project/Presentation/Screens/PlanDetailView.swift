import SwiftUI

struct LogDataDto : Identifiable {
    let id: Int
    var title: String
    var content: String
    var date: String
}

struct PlanDetailView : View {
    @State private var title : String = "title"
    @State private var keyword : [String] = ["keyword", "keyword"]
    @State private var date : [String] = ["2024.12.12", "2024.12.14"]
    @State private var content: String = "contentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontent"
    
    @State private var logDatas : [LogDataDto] = [
        LogDataDto(
            id: 1,
            title: "sssasasasa",
            content: "dasfghewsadfgwqerffgwqwsdef",
            date: "2024.10.10"
        ),
        LogDataDto(
            id: 2,
            title: "sssasasasa",
            content: "dasfghewsadfgwqerffgwqwsdef",
            date: "2024.10.10"
        ),
        LogDataDto(
            id: 3,
            title: "sssasasasa",
            content: "dasfghewsadfgwqerffgwqwsdef",
            date: "2024.10.10"
        ),
        LogDataDto(
            id: 4,
            title: "sssasasasa",
            content: "dasfghewsadfgwqerffgwqwsdef",
            date: "2024.10.10"
        )
    ]
    
    @State private var isEditBtnClick: Bool = false
    @State private var isDelBtnClick: Bool = false

    var body : some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 60) {
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text(title)
                                .font(.system(size: 30, weight: .semibold))
                            
                            HStack {
                                ForEach(keyword, id: \.self) { keywordData in
                                    KeywordField(text: keywordData)
                                }
                            }
                        }
                        HStack {
                            Text(date[0])
                                .font(.system(size: 20))
                                .foregroundColor(Colors.Gray.g600)
                            Text("~")
                                .font(.system(size: 20))
                                .foregroundColor(Colors.Gray.g600)
                            Text(date[1])
                                .font(.system(size: 20))
                                .foregroundColor(Colors.Gray.g600)
                        }
                    }
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 20) {
                            Text(content)
                            
                            Text("여행 일지")
                                .font(.system(size: 24, weight: .bold))
                            
                            ForEach(logDatas) { log in
                                PostView(
                                    title: log.title,
                                    content: log.content,
                                    date: log.date,
                                    destination: { PlanDetailView() }
                                )
                            }
                        }
                    }
                }
                .padding()
                Spacer()
            }
            VStack(spacing: 12) {
                
                Button(action: { isEditBtnClick = true }) {
                    Image(systemName: "pencil")
                        .resizable()
                        .scaledToFit()
                        .frame(width:24, height: 24)
                        .foregroundColor(.white)
                }
                .frame(width: 60, height: 60)
                .background(Colors.Orange.o500)
                .cornerRadius(30)
                .navigationDestination(isPresented: $isEditBtnClick) {
                    LoginView()
                }

                Button(action: { isDelBtnClick = true }) {
                    Image(systemName: "trash.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:24, height: 24)
                        .foregroundColor(Colors.Orange.o500)
                }
                .frame(width: 60, height: 60)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Colors.Orange.o500, lineWidth: 1)
                )
                .navigationDestination(isPresented: $isDelBtnClick) {
                    LoginView()
                }

            }
            .padding(.trailing, 20)
            .padding(.bottom, 40)
        }
    }
}
