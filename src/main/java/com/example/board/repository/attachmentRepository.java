package com.example.board.repository;

import com.example.board.model.Entity.attachmentEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface attachmentRepository extends JpaRepository<attachmentEntity, Integer> {
}
