package com.gr25.thinkpro.repository;

import com.gr25.thinkpro.domain.entity.BillDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface BillDetailRepository extends JpaRepository<BillDetail, Long> {
}
