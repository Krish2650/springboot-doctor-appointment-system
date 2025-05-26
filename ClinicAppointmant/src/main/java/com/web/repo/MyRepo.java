package com.web.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import com.web.model.MyModel;

public interface MyRepo extends JpaRepository<MyModel, Long> {
}












