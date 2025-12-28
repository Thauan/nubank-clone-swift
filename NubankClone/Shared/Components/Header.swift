import SwiftUI


struct Header: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .imageScale(.large)
                    .padding(12)
                    .background(Circle().foregroundColor(.white).opacity(0.21))
                
                Spacer()
                Image(systemName: !viewModel.showingBalance ? "eye" : "eye.slash").onTapGesture {
                    viewModel.toggleVisibilityBalance()
                }
                Image(systemName: "questionmark.circle")
                Image(systemName: "envelope.badge")
                Image(systemName: viewModel.colorSchema == .light ? "moon" : "sun.max").onTapGesture {
                    viewModel.toggleColorSchema()
                }
            }
            .font(.title3)
            .padding()

                
            Text("Olá, Thauan!")
                .font(.title2)
                .padding()
        }
        .fontWeight(.medium)
        .foregroundColor(.white)
        .background(.nubankPurple)
    }
}
