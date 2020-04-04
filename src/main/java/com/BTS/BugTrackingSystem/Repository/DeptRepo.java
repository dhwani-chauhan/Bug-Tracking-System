package com.BTS.BugTrackingSystem.Repository;

import com.BTS.BugTrackingSystem.Model.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeptRepo extends JpaRepository<Department,Integer> {
}
