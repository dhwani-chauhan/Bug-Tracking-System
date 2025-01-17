package com.BTS.BugTrackingSystem.Repository;


import com.BTS.BugTrackingSystem.Model.Developer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeveloperRepo extends JpaRepository<Developer,String> {
    public Developer findByUsernameAndPassword(String username,String password);
    public Developer findByUsername(String username);
}
