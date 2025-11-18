import SwiftUI

struct PlanDetailView : View {
    @State private var title : String = "title"
    @State private var keyword : [String] = ["keyword", "keyword"]
    @State private var date : [String] = ["2024.12.12", "2024.12.14"]
    @State private var content: String = "contentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontent"
    
    @State private var isEditBtnClick: Bool = false
    
    @State private var isDelBtnClick: Bool = false

    var body : some View {
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
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(Colors.Gray.g600)
                        Text("~")
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(Colors.Gray.g600)
                        Text(date[1])
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(Colors.Gray.g600)
                    }
                    
                }
                Text(content)
                VStack(spacing: 12) {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {isEditBtnClick = true}) {
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
                    }
                    HStack {
                        Spacer()
                        Button(action: {isDelBtnClick = true}) {
                            Image(systemName: "trash.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width:24, height: 24)
                                .foregroundColor(Colors.Orange.o500)
                        }
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                        .navigationDestination(isPresented: $isDelBtnClick) {
                            LoginView()
                        }
                        .overlay {
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(Colors.Orange.o500, lineWidth: 1)
                        }
                    }
                }
            }
            .padding()
            Spacer()
        }
    }
}
