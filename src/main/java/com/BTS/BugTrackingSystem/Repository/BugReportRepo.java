package com.BTS.BugTrackingSystem.Repository;

import com.BTS.BugTrackingSystem.Model.BugReport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BugReportRepo extends JpaRepository<BugReport,Integer> {
}
