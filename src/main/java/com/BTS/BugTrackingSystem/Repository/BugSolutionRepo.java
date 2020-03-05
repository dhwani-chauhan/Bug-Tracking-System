package com.BTS.BugTrackingSystem.Repository;

import com.BTS.BugTrackingSystem.Model.BugSolution;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BugSolutionRepo extends JpaRepository<BugSolution,Integer> {
}
