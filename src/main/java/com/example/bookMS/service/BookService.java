package com.example.bookMS.service;

import com.example.bookMS.model.Book;
import com.example.bookMS.model.BookCreateRequest;
import com.example.bookMS.model.BookResponse;
import com.example.bookMS.model.BookUpdateRequest;

import java.util.List;

public interface BookService {

    BookResponse createBook(BookCreateRequest request);

    List<BookResponse> getBookList();

    BookResponse getBook(Long id);

    BookResponse updateBook(Long id, BookUpdateRequest request);

    void deleteBook(Long id);

    BookResponse updateBookCover(Long id, String imageUrl);
}