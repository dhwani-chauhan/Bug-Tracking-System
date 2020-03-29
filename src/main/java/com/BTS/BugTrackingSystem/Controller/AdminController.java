package com.BTS.BugTrackingSystem.Controller;

import com.BTS.BugTrackingSystem.Model.BugReport;
import com.BTS.BugTrackingSystem.Model.BugSolution;
import com.BTS.BugTrackingSystem.Model.Developer;
import com.BTS.BugTrackingSystem.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @GetMapping("/sol/")
    public ResponseEntity showAllSol() {
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

    @GetMapping("/rep/")
    public ResponseEntity showAllRe() {
        try {
            List<BugReport> list = adminService.showAllRe();
            return correctResponse(list,HttpStatus.OK, HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
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
