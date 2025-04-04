//
//  MemoCell.swift
//  SwiftUIMemoNeukkim
//
//  Created by SunMin Hong on 4/5/25.
//

import SwiftUI
struct MemoCell: View {
  @ObservedObject var memo: Memo
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(memo.content)
        .font(.body)
        .lineLimit(1)
      
      Text(memo.insertDate, style:  .date)
        .font(.caption)
        .foregroundStyle(.secondary)
    }
  }
}


#Preview {
  MemoCell(memo: Memo(content: "Test"))
}
