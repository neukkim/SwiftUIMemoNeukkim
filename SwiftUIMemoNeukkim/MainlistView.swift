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
        VStack(alignment: .leading) {
          Text(memo.content)
            .font(.body)
            .lineLimit(1)
          
          Text(memo.insertDate, style:  .date)
            .font(.caption)
            .foregroundStyle(.secondary)
        }
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
