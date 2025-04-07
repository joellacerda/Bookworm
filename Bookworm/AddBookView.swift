//
//  AddBookView.swift
//  Bookworm
//
//  Created by Joel Lacerda on 13/03/25.
//

import SwiftData
import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var author = ""
    @State private var genre = ""
    @State private var review = ""
    @State private var rating = 3
    
    let genres = ["Romance", "Fantasy", "Sci-Fi", "Horror", "Thriller", "Kids", "Poetry", "Biopic"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Title of the book", text: $title)
                    TextField("Author's name", text: $author)
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section("Write a review") {
                    TextEditor(text: $review)
                    Picker("Rating", selection: $rating) {
                        ForEach(1..<6) {
                            Text(String($0))
                                .tag($0)
                        }
                    }
                }
                
                Section {
                    Button("Save") {
                        let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        modelContext.insert(newBook)
                        dismiss()
                    }
                    
                }
            }
            .navigationTitle("Add Book")
        }
    }
}

#Preview {
    AddBookView()
}
