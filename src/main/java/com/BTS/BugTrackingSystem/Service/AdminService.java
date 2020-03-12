package com.BTS.BugTrackingSystem.Service;

import com.BTS.BugTrackingSystem.Model.BugReport;
import com.BTS.BugTrackingSystem.Model.BugSolution;
import com.BTS.BugTrackingSystem.Model.Developer;
import com.BTS.BugTrackingSystem.Repository.AdminRepo;
import com.BTS.BugTrackingSystem.Repository.DeveloperRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AdminService {

    @Autowired
    private AdminRepo adminRepo;

    @Autowired
    private DeveloperRepo developerRepo;

    @Autowired
    private TesterService testerService;

    @Autowired
    private DeveloperService developerService;

    public BugReport findReById(int id) throws Exception{
        return testerService.findById(id);
    }

    public List<BugReport> showAllRe() throws Exception{
        return testerService.showAll();
    }

    public BugSolution findSolById(int id) throws Exception{
        return developerService.findById(id);
    }

    public List<BugSolution> showAllSol() throws Exception{
        return developerService.showAll();
    }

    public Developer findById(String id) throws Exception{
        Optional<Developer> developer = developerRepo.findById(id);
        if(!developer.isPresent())
            throw new Exception("No such bug reported exist");
        return developer.get();
    }

    public BugReport changeStatus(int bug_no) throws Exception{
        Optional<BugReport> bugReport = Optional.ofNullable(findReById(bug_no));
        if(!bugReport.isPresent())
            throw new Exception("No such bug reported exist");
        else{
            String status = testerService.checkStatus(bug_no);
            if(!status.equals("Completed")){
                adminRepo.changeStatus(bug_no);
            }
            return bugReport.get();
        }
    }

    //ReAssign to Developer if not solved bug
}
