//
//  MainlistView.swift
//  SwiftUIMemoNeukkim
//
//  Created by SunMin Hong on 4/3/25.
//

import SwiftUI

struct MainlistView: View {
  @EnvironmentObject var store: MemoStore
  
  @State private var showComposer: Bool = false
  
  var body: some View {
    NavigationView {
      List {
        ForEach(store.list) { memo in
          NavigationLink {
            DetailView(memo: memo)
          } label: {
            MemoCell(memo: memo)
          }
        }
        .onDelete(perform: store.delete)
      }
      .listStyle(.plain)
      .navigationTitle("내 메모")
      .toolbar {
        Button {
          showComposer = true
        } label: {
          Image(systemName: "plus")
        }
      }
      .sheet(isPresented: $showComposer) {
        ComposeView()
      }
    }
  }
}

#Preview {
    MainlistView()
    .environmentObject(MemoStore())
}

