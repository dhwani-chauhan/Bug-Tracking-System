package com.BTS.BugTrackingSystem.Service;

import com.BTS.BugTrackingSystem.Model.*;
import com.BTS.BugTrackingSystem.Repository.AdminRepo;
import com.BTS.BugTrackingSystem.Repository.DeptRepo;
import com.BTS.BugTrackingSystem.Repository.DeveloperRepo;
import com.BTS.BugTrackingSystem.Repository.ProjectDeRepo;
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

    @Autowired
    private DeptRepo deptRepo;

    @Autowired
    private ProjectDeRepo projectDeRepo;

    public Department addDept(Department department) throws Exception{
        if(department == null)
            throw new Exception("No Department Added");
        return deptRepo.save(department);
    }

    public Department findDeptById(int id) throws Exception{
        Optional<Department> department = deptRepo.findById(id);
        if(!department.isPresent())
            throw new Exception("No Such department Found");
        return department.get();
    }

    public void deleteDept(int id){
        deptRepo.deleteById(id);
    }

    public List<Department> showAllDept() throws Exception{
        List<Department> departments = deptRepo.findAll();
        if(departments.isEmpty())
            throw new Exception("No Department is present");
        return departments;
    }

    public ProjectDetails addProject(ProjectDetails projectDetails) throws Exception{
        if(projectDeRepo == null)
            throw new Exception("No Department Added");
        return projectDeRepo.save(projectDetails);
    }

    public ProjectDetails findProjectById(int id) throws Exception{
        Optional<ProjectDetails> projectDetails = projectDeRepo.findById(id);
        if(!projectDetails.isPresent())
            throw new Exception("No Such department Found");
        return projectDetails.get();
    }

    public void deleteProject(int id){
        projectDeRepo.deleteById(id);
    }

    public List<ProjectDetails> showAllProject() throws Exception{
        List<ProjectDetails> projectDetails = projectDeRepo.findAll();
        if(projectDetails.isEmpty())
            throw new Exception("No Department is present");
        return projectDetails;
    }

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

    public Developer addEmp(Developer developer) throws Exception{
        if(developer == null)
            throw new Exception("No Employee Added");
        return developerRepo.save(developer);
    }

    public Developer findById(String id) throws Exception{
        Optional<Developer> developer = developerRepo.findById(id);
        if(!developer.isPresent())
            throw new Exception("No such developer exist");
        return developer.get();
    }

    public List<Developer> showAllEmp() throws Exception{
        return developerRepo.findAll();
    }

//    public Developer editProfile(Developer developer) throws Exception{
//        Developer developer1 = developerRepo.findById(developer.getUser_id());
//        if(developer.getEmail().equals(developer1.getEmail())){
//            developer1.setAddress(developer.getAddress());
//            developer1.setDob(developer.getDob());
//            developer1.setGender(developer.getGender());
//            developer1.setPh_no(developer.getPh_no());
//            developer1.setDoj(developer.getDoj());
//            developer1.setQualification(developer.getQualification());
//            developer1.setRole(developer.getRole());
//            developer = developerRepo.save(developer1);
//        }
//        return developer;
//    }

    public BugReport changeStatus(int bug_no) throws Exception{
        Optional<BugReport> bugReport = Optional.ofNullable(findReById(bug_no));
        if(!bugReport.isPresent())
            throw new Exception("No such bug reported exist");
        else{
            String status = testerService.checkStatus(bug_no);
            if(!status.equals("Completed")){
                //change status

            }
            return bugReport.get();
        }
    }

    //ReAssign to Developer if not solved bug
}
