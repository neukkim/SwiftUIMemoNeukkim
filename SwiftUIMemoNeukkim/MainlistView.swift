//
//  MainlistView.swift
//  SwiftUIMemoNeukkim
//
//  Created by SunMin Hong on 4/3/25.
//

import SwiftUI

struct MainlistView: View {
  @EnvironmentObject var store: MemoStore
  
  var body: some View {
    NavigationView {
      List(store.list) { memo in
        MemoCell(memo: memo)
      }
      .listStyle(.plain)
      .navigationTitle("내 메모")
    }
  }
}

#Preview {
    MainlistView()
    .environmentObject(MemoStore())
}

