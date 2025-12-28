import SwiftUI

struct Option {
    let title: String
    let imageTitle: String
}

struct AccountBox: View {
    @ObservedObject var viewModel: HomeViewModel
    let heights = stride(from: 0.1, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0) }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Conta")
                    .font(.title2)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.top)
            .padding(.horizontal)
            
            Text("R$ 501.890,30")
                .skeleton(isLoading: !viewModel.showingBalance)
                .padding(.vertical)
                .padding(.horizontal)
                .font(.title2)
                .fontWeight(.medium)
                
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(viewModel.options, id: \.title) { option in
                        Button {} label: {
                            VStack(alignment: .center) {
                                ZStack {
                                    Circle().foregroundColor(Color.gray.opacity(0.2)).frame(width: 70, height: 70)
                                    Image(systemName: option.imageTitle)
                                        .font(.title2)
                                        .padding(10)
                                }
                                
                                Text(option.title)
                            }
                            .foregroundColor(.primary)
                            .frame(width: 85)
                        }
                    }

                }
            }
            
            Button {} label: {
                HStack {
                    Image(systemName: "lanyardcard")
                        .font(.title2)
                    Text("Meus Cartões")
                        .padding(.leading)
                    Spacer()
                }
                .padding()
                .foregroundColor(.primary)
                .frame(height: 70)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(16)
                .padding()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(viewModel.extras, id: \.self) { extra in
                        Button {
                            viewModel.showingExtraBottomSheet.toggle()
                        } label: {
                            Text(extra)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                .font(.system(size: 14))
                                .padding()
                                .frame(width: 300, height: 100)
                                .background(Color.gray.opacity(0.2))
                                .foregroundColor(.primary)
                                .cornerRadius(16)
                        }
                        .sheet(isPresented: $viewModel.showingExtraBottomSheet) {
                            Text("This app was brought to you by Hacking with Swift")
                                .presentationDetents(Set(heights))
                        }
                    }
                }
            }
        }
    }
}
