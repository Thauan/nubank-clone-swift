import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                    .tag(0)
                
                Text("Tela de Shopping")
                    .tabItem {
                        Image(systemName: "bag")
                    }
                    .tag(1)
                
                Text("Tela de Investimentos")
                    .tabItem {
                        Image(systemName: "dollarsign.circle")
                    }
                    .tag(2)
        }
        .accentColor(Color.purple)
    }
}
