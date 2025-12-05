// src/main/java/com/example/backend/dto/BookCreateRequest.java
package com.example.bookMS.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookCreateRequest {
    private String title;   // 필수
    private String content; // 필수
}
