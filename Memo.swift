//
//  Memo.swift
//  SwiftUIMemoNeukkim
//
//  Created by SunMin Hong on 4/3/25.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
  let id: UUID
  @Published var content: String
  let insertDate: Date
  
  init(content: String, insertDte: Date = Date.now) {
    id = UUID()
    self.content = content
    self.insertDate = insertDte
  }
}
