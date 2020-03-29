package com.BTS.BugTrackingSystem.Controller;

import com.BTS.BugTrackingSystem.Model.BugReport;
import com.BTS.BugTrackingSystem.Model.BugSolution;
import com.BTS.BugTrackingSystem.Service.TesterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

@RestController
public class TesterController {

    @Autowired
    private TesterService testerService;

    @PostMapping(path = "/add")
    public ResponseEntity addSolution(@RequestBody BugReport bugReport){
        try{
            BugReport bugReport1 = testerService.addBug(bugReport);
            return correctResponse(bugReport1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @PostMapping(path = "/update")
    public ResponseEntity editSolution(@RequestBody BugReport bugReport){
        try{
            BugReport bugReport1 = testerService.findById(bugReport.getBug_no());
            BugReport bugReport2 =testerService.updateBug(bugReport,bugReport1);
            return correctResponse(bugReport2,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @DeleteMapping(path = "/delete/{id}")
    public ResponseEntity deleteBug(@PathVariable int id) throws Exception{
        try{
            testerService.deleteBug(id);
            return correctResponse(1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @GetMapping(path="/find/{id}")
    public ResponseEntity findById(@RequestBody int id) throws Exception{
        try {
            BugReport bugReport = testerService.findById(id);
            return correctResponse(bugReport,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping("/")
    public ResponseEntity showAll() {
        try {
            List<BugReport> list = testerService.showAll();
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
