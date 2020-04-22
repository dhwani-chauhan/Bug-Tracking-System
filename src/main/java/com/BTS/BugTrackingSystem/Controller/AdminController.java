package com.BTS.BugTrackingSystem.Controller;

import com.BTS.BugTrackingSystem.Model.*;
import com.BTS.BugTrackingSystem.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(path = "/")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping(path="/find/{sid}")
    public ResponseEntity findSolById(@RequestBody int sid) throws Exception{
        try {
            BugSolution bugSolution = adminService.findSolById(sid);
            return correctResponse(bugSolution,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping(path="/sol/")
    public ResponseEntity showAllSol() throws Exception{
        try {
            List<BugSolution> list = adminService.showAllSol();
            return correctResponse(list,HttpStatus.OK, HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping(path="/find/{rid}")
    public ResponseEntity findReById(@RequestBody int rid) throws Exception{
        try {
            BugReport bugReport = adminService.findReById(rid);
            return correctResponse(bugReport,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping(path="/rep/")
    public ResponseEntity showAllRe() throws Exception{
        try {
            List<BugReport> list = adminService.showAllRe();
            return correctResponse(list,HttpStatus.OK, HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @PostMapping(path="/addEmp")
    public ResponseEntity addEmp(@RequestBody Developer developer) throws Exception{
        try{
            Developer developer1 = adminService.addEmp(developer);
                return correctResponse(developer1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }catch (Exception ex){
            return errorResponse(ex);
        }
    }

    @GetMapping(path="/find/{id}")
    public ResponseEntity findById(@RequestBody String id) throws Exception{
        try {
            Developer developer = adminService.findById(id);
            return correctResponse(developer,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping(path = "/emp/")
    public ResponseEntity showAllEmp() throws Exception{
        try {
            List<Developer> list = adminService.showAllEmp();
            return correctResponse(list,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @PostMapping(path = "/addDept")
    public ResponseEntity addDepartment(@RequestBody Department department) throws Exception{
        try{
            Department department1 = adminService.addDept(department);
            return correctResponse(department1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @DeleteMapping(path = "/deleteDept/{id}")
    public ResponseEntity deleteDept(@PathVariable int id) throws Exception{
        try{
            adminService.deleteDept(id);
            return correctResponse(1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @GetMapping(path="/findDept/{id}")
    public ResponseEntity findDeptById(@RequestBody int id) throws Exception{
        try {
            Department department = adminService.findDeptById(id);
            return correctResponse(department,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping(path="/dept/")
    public ResponseEntity showAllDept() throws Exception{
        try {
            List<Department> list = adminService.showAllDept();
            return correctResponse(list,HttpStatus.OK, HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @PostMapping(path = "/addProject")
    public ResponseEntity addProject(@RequestBody ProjectDetails projectDetails) throws Exception{
        try{
            ProjectDetails projectDetails1 = adminService.addProject(projectDetails);
            return correctResponse(projectDetails1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @DeleteMapping(path = "/deleteProject/{id}")
    public ResponseEntity deleteProject(@PathVariable int id) throws Exception{
        try{
            adminService.deleteProject(id);
            return correctResponse(1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @GetMapping(path="/findProject/{id}")
    public ResponseEntity findProjectById(@RequestBody int id) throws Exception{
        try {
            ProjectDetails projectDetails = adminService.findProjectById(id);
            return correctResponse(projectDetails,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping(path="/project/")
    public ResponseEntity showAllProject() throws Exception{
        try {
            List<ProjectDetails> list = adminService.showAllProject();
            return correctResponse(list,HttpStatus.OK, HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    private ResponseEntity errorResponse(Exception ex) {
        HashMap<Object, Object> response = new HashMap<>();
        response.put("timestamp", new Date());
        response.put("error", HttpStatus.INTERNAL_SERVER_ERROR);
        response.put("status", HttpStatus.INTERNAL_SERVER_ERROR.value());
        response.put("message", ex.getMessage());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(response);
    }

    private ResponseEntity correctResponse(Object value, Object error, int statusCode, String message, HttpStatus status) {
        HashMap<Object, Object> response = new HashMap<>();
        response.put("value", value);
        response.put("error", error);
        response.put("status", statusCode);
        response.put("message", message);
        return ResponseEntity.status(status).body(response);
    }
}
