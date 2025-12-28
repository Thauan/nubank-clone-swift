import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var showingExtraBottomSheet: Bool = false
    @Published var showingBalance: Bool = false
    @Published var colorSchema: ColorScheme = .dark

    let options: [Option] = [
        Option(title: "Área Pix", imageTitle: "circle.grid.cross"),
        Option(title: "Pagar", imageTitle: "barcode"),
        Option(title: "Empréstimos", imageTitle: "dollarsign.circle"),
        Option(title: "Caixinha Turbo", imageTitle: "shippingbox"),
        Option(title: "Recarga de celular", imageTitle: "platter.filled.bottom.iphone"),
        Option(title: "Caixinhas e Investir", imageTitle: "banknote"),
    ]
    
    let extras: [String] = [
        "Dinheiro Extra no fim do ano? Guarde nas Caixinhas!",
        "Dinheiro Extra no fim do ano? Guarde nas Caixinhas!",
        "Dinheiro Extra no fim do ano? Guarde nas Caixinhas!",
        "Dinheiro Extra no fim do ano? Guarde nas Caixinhas!"
    ]

    func toggleColorSchema() {
        colorSchema = (colorSchema == .dark) ? .light : .dark
    }
    
    func toggleCredits() {
        showingExtraBottomSheet.toggle()
    }
    
    func toggleVisibilityBalance() {
        showingBalance.toggle()
    }
}
