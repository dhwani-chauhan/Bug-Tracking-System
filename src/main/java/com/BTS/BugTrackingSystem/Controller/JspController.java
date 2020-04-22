package com.BTS.BugTrackingSystem.Controller;

import com.BTS.BugTrackingSystem.Model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@ResponseBody
@RequestMapping("/page")
public class JspController {

    @Autowired
    public AdminController adminController;

    @GetMapping()
    public String homePage() {
        return "Home";
    }

    @GetMapping(path="/login")
    public String login(Model model) {
        model.addAttribute("developer",new Developer());
        return "login";
    }

    @GetMapping(path="/emp/")
    public String viewEmp(){
        return "EmployeeDetails";
    }

    @GetMapping(path="/emp/editProfile/{id}")
    public String editProfile(Model model,@PathVariable int id){
        return "EmployeeDetails?id=" + id;
    }

    @GetMapping(path="/dept/addDept")
    public String addDept(Model model){
        model.addAttribute("department",new Department());
        return "AddDepartment";
    }

    @GetMapping(path="/dept/deleteDept/{id}")
    public String deleteDept(Model model, @PathVariable int id){
        return "rediect:ViewDepartment";
    }

    @GetMapping(path="/dept")
    public String viewDept(Model model)
    {
        model.addAttribute("department", new Department());
        return "ViewDepartment";
    }

    @GetMapping(path="/proj/addProj")
    public String addProj(Model model) throws Exception {
        model.addAttribute("projectDetails",new ProjectDetails());
        model.addAttribute("department",adminController.showAllDept());
        model.addAttribute("Plead",adminController.showAllEmp());
        return "AddProject";
    }


    @GetMapping(path="/proj/deleteProj/{id}")
    public String deleteProj(Model model, @PathVariable int id){
        return "redirect:ViewProject";
    }

    @GetMapping(path="/proj")
    public String viewProj(Model model){
        model.addAttribute("projectDetails",new ProjectDetails());
        return "ViewProject";
    }

    @GetMapping(path="/sol/addSol")
    public String addSol(Model model){
        model.addAttribute("bugSolution",new BugSolution());
        return "BugSolution";
    }

    @GetMapping(path="/sol")
    public String viewSol(){
        return "ViewSolution";
    }

    @GetMapping(path="/rep/addRep")
    public String addRep(Model model){
        model.addAttribute("bugReport",new BugReport());
        return "BugReport";
    }

    @GetMapping(path="/rep")
    public String viewRep(){
        return "ViewBugs";
    }

    // Login form with error
    @RequestMapping(path="/login-error")
    public String loginError(Model model) {
        model.addAttribute("loginError", true);
        return "login";
    }

    @RequestMapping("/assignProj")
    public String assignProj(Model model) throws Exception {
        model.addAttribute("Admin assign", new AdminClass());
        model.addAttribute("Projectname",adminController.showAllProject());
        model.addAttribute("e_code",adminController.showAllEmp());
        return "AssignProject";
    }

    @RequestMapping("/assignBug")
    public String assignBug(Model model) throws Exception {
        model.addAttribute("Admin assign", new AssignProject());
        model.addAttribute("Projectname",adminController.showAllProject());
        model.addAttribute("e_code",adminController.showAllEmp());
        return "AssignBug";
    }
}
