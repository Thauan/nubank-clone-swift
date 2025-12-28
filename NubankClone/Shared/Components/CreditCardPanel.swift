//
//  Untitled.swift
//  NubankClone
//
//  Created by Thauan Braga Almeida on 28/12/25.
//

import SwiftUI

struct CreditCardPanel: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Cartão de Crédito")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
            
            Text("Fatura Atual")
                .foregroundColor(Color.gray)
                .padding(.horizontal)
                .padding(.top, 8)
            
            Text("R$ 200.43")
                .foregroundColor(.primary)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 2)
                .padding(.horizontal)
            
            Text("Limite Disponivel de R$ 47.100,00")
                .foregroundColor(Color.gray)
                .padding(.horizontal)
                .padding(.top, 2)
            
            Button {} label: {
                HStack {
                    Image(systemName: "gift")
                        .font(.title2)
                    Text("Meu Ultravioleta")
                        .padding(.leading)
                        .fontWeight(.medium)
                    Spacer()
                    
                    Text("R$ 5.000,00")
                        .padding(.trailing)
                }
                .padding()
                .foregroundColor(.primary)
                .frame(height: 70)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(16)
                .padding()
            }
        }
    }
}
