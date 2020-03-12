package com.BTS.BugTrackingSystem.Service;

import com.BTS.BugTrackingSystem.Model.BugSolution;
import com.BTS.BugTrackingSystem.Repository.BugSolutionRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DeveloperService {
    @Autowired
    private BugSolutionRepo solutionRepo;

    public BugSolution addSolution(BugSolution bugSolution) throws Exception{
        if(bugSolution == null)
            throw new Exception("No Solution added");
        return solutionRepo.save(bugSolution);
    }

    public BugSolution findById(int id) throws Exception{
        Optional<BugSolution> bugSolution = solutionRepo.findById(id);
        if(!bugSolution.isPresent())
            throw new Exception("No Such Bug Solution Found");
        return bugSolution.get();
    }

    public List<BugSolution> showAll() throws Exception{
        List<BugSolution> bugSolutions = solutionRepo.findAll();
        if(bugSolutions.isEmpty())
            throw new Exception("No bug solution is present");
        return bugSolutions;
    }

}
