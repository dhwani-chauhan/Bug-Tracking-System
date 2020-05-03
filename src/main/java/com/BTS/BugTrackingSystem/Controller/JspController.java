package com.BTS.BugTrackingSystem.Controller;

import com.BTS.BugTrackingSystem.Model.*;
import com.BTS.BugTrackingSystem.Service.DeveloperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
//@ResponseBody
@RequestMapping("/page")
public class JspController {

    @Autowired
    public AdminController adminController;

    @Autowired
    public DeveloperController developerController;

    @Autowired
    public TesterController testerController;

    @Autowired
    public DeveloperService developerService;

    @GetMapping()
    public String homePage() {
        return "Home";
    }

    @GetMapping("/login")
    public String loginPage(Model model) {
        model.addAttribute("developer",new LogIn());
        return "login";
    }

    @PostMapping(path="/login")
    public String login(@Valid @ModelAttribute("login") LogIn emp, BindingResult bindingResult, Model model,
                        HttpServletRequest request) {
        if (request.getSession().getAttribute("emp") != null) {
            return "redirect:";
        }
        if (bindingResult.hasErrors()) {
            model.addAttribute("error", bindingResult);
            model.addAttribute("login", new Developer());
            return "login";
        }
        String pass = emp.getPassword();
        Developer developer = developerService.getEmpByUsername(emp.getUsername());
        if(developer != null){
            if(developer.isRegistered()){
                request.getSession().setAttribute("emp",developer);
                return "redirect:";
            }else {
                model.addAttribute("LogInError",new String("Not Registered Employee, Consult Admin"));
                return "login";
            }
        }
        else {
            emp.setPassword(null);
            model.addAttribute("LogInError",new String("Not Registered Employee, Consult Admin"));
            return "login";
        }
    }

    // Login form with error
    @RequestMapping(path="/login-error")
    public String logoutFunction(HttpServletRequest request) {
        if (request.getSession().getAttribute("emp") != null)
            request.getSession().setAttribute("emp", null);
        return "redirect:";
    }

    @GetMapping(path="/emp/")
    public String viewEmp(Model model) throws Exception {
        model.addAttribute("emp",adminController.showAllEmp());
        return "EmployeeDetails";
    }

//Emp Details

    @GetMapping(path="/emp/editProfile")
    public String editProfile(@RequestParam("uname") String username, Model model, HttpServletRequest request){
        if(request.getSession().getAttribute("emp") == null)
        {
            return "redirect:login";
        }
        else
        {
            model.addAttribute("emp", request.getSession().getAttribute("emp"));
            return "EditProfile";
        }
    }

//Department

    @GetMapping(path="/dept/addDept")
    public String addDept(@Valid @ModelAttribute("department") Department department, BindingResult bindingResult) throws Exception{
        if(bindingResult.hasErrors()){
            System.out.println(bindingResult);
        }
        adminController.addDepartment(department);
        return "AddDepartment";
    }

    @GetMapping(path="/dept/deleteDept")
    public String deleteDept(@RequestParam("id") int id, Model model)throws Exception{
        model.addAttribute("deleteDept",adminController.deleteDept(id));
        return "redirect:ViewDepartment";
    }

//    @GetMapping(path = "/dept")
//    public String findDeptById(@RequestParam("id") int id,Model model) throws Exception{
//        adminController.findDeptById(id);
//        return "ViewDepartment?id=" + id;
//    }

    @GetMapping(path="/dept")
    public String viewDept(Model model) throws Exception {
        model.addAttribute("department",adminController.showAllDept());
        return "ViewDepartment";
    }

//Project

    @GetMapping(path="/pro/addPro")
    public String addPro(@Valid @ModelAttribute("proDetails") ProjectDetails projectDetails,BindingResult bindingResult,Model model) throws Exception {
        if(bindingResult.hasErrors()){
            System.out.println(bindingResult);
        }
        model.addAttribute("department",adminController.showAllDept());
        model.addAttribute("pLead",adminController.showAllEmp());
        adminController.addProject(projectDetails);
        return "AddProject";
    }


    @GetMapping(path="/pro/deletePro")
    public String deletePro(@RequestParam("id")int id, Model model) throws Exception{
        model.addAttribute("deletePro",adminController.deleteProject(id));
        return "redirect:ViewProject";
    }

//    @GetMapping(path = "/pro")
//    public String findProById(@RequestParam("id") int id,Model model) throws Exception{
//        adminController.findProjectById(id);
//        return "ViewProject?id=" + id;
//    }

    @GetMapping(path="/pro")
    public String viewPro(Model model) throws Exception{
        model.addAttribute("projectDetails",adminController.showAllProject());
        return "ViewProject";
    }

    @RequestMapping("/assignPro")
    public String assignPro(Model model) throws Exception {
        model.addAttribute("pName",adminController.showAllProject());
        model.addAttribute("eCode",adminController.showAllEmp());

        return "AssignProject";
    }

//Bug Solution

    @GetMapping(path="/sol/addSol")
    public String addSol(@Valid @ModelAttribute("bugSolution") BugSolution bugSolution){
        developerController.addSolution(bugSolution);
        return "BugSolution";
    }

    @GetMapping(path="/sol/updateSol")
    public String updateSol(@Valid @ModelAttribute("bugSolution") BugSolution bugSolution){
        developerController.editSolution(bugSolution);
        return "BugSolution";
    }

//    @GetMapping(path = "/sol")
//    public String findSolById(@RequestParam("id") int id,Model model) throws Exception{
//        developerController.findById(id);
//        return "ViewSolution?id=" + id;
//    }

    @GetMapping(path="/sol")
    public String viewSol(Model model){
        model.addAttribute("viewSolution",developerController.showAll());
        return "ViewSolution";
    }

//Bug Report

    @GetMapping(path="/rep/addRep")
    public String addRep(@Valid @ModelAttribute("bugReport")BugReport bugReport){
        testerController.addReport(bugReport);
        return "BugReport";
    }

    @GetMapping(path="/rep/updateRep")
    public String updateRep(@Valid @ModelAttribute("bugReport")BugReport bugReport){
        testerController.editReport(bugReport);
        return "BugReport";
    }
//
//    @GetMapping(path = "/rep")
//    public String findReById(@RequestParam("id")int id,Model model) throws Exception{
//        testerController.findById(id);
//        return "ViewBugs?id=" + id;
//    }

    @GetMapping(path="/rep")
    public String viewRep(Model model){
        model.addAttribute("viewReport",testerController.showAll());
        return "ViewBugs";
    }

    @RequestMapping("/assignBug")
    public String assignBug(Model model) throws Exception {

        model.addAttribute("pName",adminController.showAllProject());
        model.addAttribute("eCode",adminController.showAllEmp());
        return "AssignBug";
    }
}
