//
//  DetailView.swift
//  SwiftUIMemoNeukkim
//
//  Created by SunMin Hong on 4/5/25.
//

import SwiftUI

struct DetailView: View {
  @ObservedObject var memo: Memo
  
  @EnvironmentObject var store: MemoStore
  
    var body: some View {
      VStack {
        ScrollView {
          VStack {
            HStack {
              Text(memo.content)
                .padding()
              
              Spacer(minLength: 0)
            }
            
            Text(memo.insertDate, style: .date)
              .padding()
              .font(.footnote)
              .foregroundColor(.secondary)
          }
        }
      }
      .navigationTitle("메모 보기")
      .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {

  DetailView(memo: Memo(content: "Hello"))
    .environmentObject(MemoStore())
}
