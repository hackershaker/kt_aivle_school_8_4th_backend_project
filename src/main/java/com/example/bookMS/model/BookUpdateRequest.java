// src/main/java/com/example/backend/dto/BookUpdateRequest.java
package com.example.bookMS.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookUpdateRequest {
    private String title;
    private String content;
}
