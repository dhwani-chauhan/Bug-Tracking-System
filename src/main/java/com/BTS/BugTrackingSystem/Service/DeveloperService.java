package com.BTS.BugTrackingSystem.Service;

import com.BTS.BugTrackingSystem.Model.BugSolution;
import com.BTS.BugTrackingSystem.Model.Developer;
import com.BTS.BugTrackingSystem.Model.LogIn;
import com.BTS.BugTrackingSystem.Repository.BugSolutionRepo;
import com.BTS.BugTrackingSystem.Repository.DeveloperRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DeveloperService {
    @Autowired
    private BugSolutionRepo solutionRepo;

    @Autowired
    private DeveloperRepo developerRepo;

    public Developer getEmp(LogIn emp){
        Developer developer=developerRepo.findByUsernameAndPassword(emp.getUsername(),emp.getPassword());
        return developer;
    }

    public Developer getEmp(Developer emp){
        Developer developer=developerRepo.findByUsername(emp.getUsername());
        return developer;
    }

    public Developer getEmpByUsername(String username){
        Developer developer = developerRepo.findByUsername(username);
        return developer;
    }

    public BugSolution addSolution(BugSolution bugSolution) throws Exception{
        if(bugSolution == null)
            throw new Exception("No Solution added");
        return solutionRepo.save(bugSolution);
    }

    public BugSolution updateSolution(BugSolution bugSolution,BugSolution bugSolution1) throws Exception{
        if(bugSolution == null)
            throw new Exception("No Solution added");
        else if(!(bugSolution1.getSolution().equalsIgnoreCase(bugSolution.getSolution()))
                    || (bugSolution1.getB_date().equalsIgnoreCase(bugSolution.getB_date()))
                        || (bugSolution1.getE_code().equalsIgnoreCase(bugSolution.getE_code()))){
                bugSolution1.setSolution(bugSolution.getSolution());
                bugSolution1.setB_date(bugSolution.getB_date());
                bugSolution1.setE_code(bugSolution.getE_code());

        }
        return solutionRepo.save(bugSolution1);
    }

    public void deleteSolution(int id)
    {
        solutionRepo.deleteById(id);
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
