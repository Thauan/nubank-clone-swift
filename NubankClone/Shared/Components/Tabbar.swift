import SwiftUI

struct Tabbar: View {
    var body: some View {
        TabView {
            Text("")
                .tabItem{
                    Image(systemName: "arrow.up.arrow.down")
                }
            Text("")
                .tabItem{
                    Image(systemName: "arrow.up.arrow.down")
                }
            Text("")
                .tabItem{
                    Image(systemName: "arrow.up.arrow.down")
                }
            Text("")
                .tabItem{
                    Image(systemName: "arrow.up.arrow.down")
                }
        }
        .accentColor(.nubankPurple)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
