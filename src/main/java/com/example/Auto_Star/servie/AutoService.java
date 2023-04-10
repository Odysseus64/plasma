package com.example.Auto_Star.servie;

import com.example.Auto_Star.model.Auto;
import com.example.Auto_Star.model.Image;
import com.example.Auto_Star.repository.AutoRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class AutoService {
    private final AutoRepository autoRepository;

    public List<Auto> listAuto(String title) {
        log.info("Successfully found {}", title);
        if (title != null) return autoRepository.findByName(title);
        return autoRepository.findAll();
    }

    public void saveProduct(Auto auto, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        Image image1;
        Image image2;
        Image image3;
        if (file1.getSize() != 0) {
            image1 = toImageEntity1(file1);
            auto.addImageToAuto(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity1(file2);
            auto.addImageToAuto(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity1(file3);
            auto.addImageToAuto(image3);
        }
        log.info("Saving new {}", auto);
        Auto auto1 = autoRepository.save(auto);
//        auto1.setPreviewImageId(auto1.get(0).getId());
        autoRepository.save(auto);
    }

    private Image toImageEntity1(MultipartFile file1) throws IOException {
        Image image = new Image();
        image.setName(file1.getName());
        image.setOriginalFileName(file1.getOriginalFilename());
        image.setSize(file1.getSize());
        image.setBytes(file1.getBytes());
        image.setContentType(file1.getContentType());
        return image;
    }

    public void deleteProduct(Long id) {
        log.info("Delete{}", id);
        autoRepository.deleteById(id);
    }

    public Auto getAutoById(Long id) {
        log.info("Delete Auto By Id{}", id);
        return autoRepository.findById(id).orElse(null);
    }
}

