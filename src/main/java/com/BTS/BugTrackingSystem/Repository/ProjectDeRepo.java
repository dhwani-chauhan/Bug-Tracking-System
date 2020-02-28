package com.BTS.BugTrackingSystem.Repository;

import com.BTS.BugTrackingSystem.Model.ProjectDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectDeRepo extends JpaRepository<ProjectDetails,Integer> {
}
