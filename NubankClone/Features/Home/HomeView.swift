import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
        
    var body: some View {
        ScrollView {
            VStack() {
                Header(viewModel: viewModel)
                AccountBox(viewModel: viewModel)
                CreditCardPanel()
            }
        }.preferredColorScheme(viewModel.colorSchema)
    }
}

#Preview {
    HomeView()
}
