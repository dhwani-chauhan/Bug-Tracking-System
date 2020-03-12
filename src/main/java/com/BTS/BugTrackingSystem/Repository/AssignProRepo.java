package com.BTS.BugTrackingSystem.Repository;

import com.BTS.BugTrackingSystem.Model.AssignProject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AssignProRepo extends JpaRepository<AssignProject,Integer> {
}
