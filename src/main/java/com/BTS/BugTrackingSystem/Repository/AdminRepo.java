package com.BTS.BugTrackingSystem.Repository;

import com.BTS.BugTrackingSystem.Model.AdminClass;
import com.BTS.BugTrackingSystem.Model.BugReport;
import com.BTS.BugTrackingSystem.Model.BugSolution;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminRepo extends JpaRepository<AdminClass,Integer> {
}
