package com.gr25.thinkpro.service.impl;

import com.gr25.thinkpro.domain.entity.Image;
import com.gr25.thinkpro.repository.ImageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ImageServiceImpl {
    private final ImageRepository imageRepository;

    public Image saveImage(Image image) {
        return imageRepository.save(image);
    }

    public void deleteImage(long id) {
        imageRepository.deleteByProductId(id);
    }
}
