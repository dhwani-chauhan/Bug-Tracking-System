package com.BTS.BugTrackingSystem.Repository;

import com.BTS.BugTrackingSystem.Model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepo extends JpaRepository<Admin,Integer> {
}
