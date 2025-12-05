// src/main/java/com/example/backend/dto/CoverUrlUpdateRequest.java
package com.example.bookMS.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CoverUrlUpdateRequest {
    // 비어있거나 null이면 → 이미지 삭제
    private String imageUrl;
}
