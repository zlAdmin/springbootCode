package com.wencst.server.aps.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wencst.server.aps.model.ProductPlan;

@Repository
public interface ProductPlanDao extends JpaRepository<ProductPlan, String> {

}
