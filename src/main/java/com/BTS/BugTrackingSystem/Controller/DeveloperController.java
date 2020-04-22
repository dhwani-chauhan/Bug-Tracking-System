package com.BTS.BugTrackingSystem.Controller;

import com.BTS.BugTrackingSystem.Model.BugSolution;
import com.BTS.BugTrackingSystem.Model.Developer;
import com.BTS.BugTrackingSystem.Service.DeveloperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(path = "/bugsolution")
public class DeveloperController {

    @Autowired
    private DeveloperService developerService;

    @PostMapping(path = "/add")
    public ResponseEntity addSolution(@RequestBody BugSolution bugSolution){
        try{
            BugSolution bugSolution1 = developerService.addSolution(bugSolution);
            return correctResponse(bugSolution1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @PostMapping(path = "/update")
    public ResponseEntity editSolution(@RequestBody BugSolution bugSolution){
        try{
            BugSolution bugSolution1 = developerService.findById(bugSolution.getBug_no());
            BugSolution bugSolution2 = developerService.updateSolution(bugSolution,bugSolution1);
            return correctResponse(bugSolution2,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @DeleteMapping(path = "/delete/{id}")
    public ResponseEntity deleteSolution(@PathVariable int id) throws Exception{
        try{
            developerService.deleteSolution(id);
            return correctResponse(1,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch(Exception e){
            return errorResponse(e);
        }
    }

    @GetMapping(path="/find/{id}")
    public ResponseEntity findById(@RequestBody int id) throws Exception{
        try {
            BugSolution bugSolution = developerService.findById(id);
            return correctResponse(bugSolution,HttpStatus.OK,HttpStatus.OK.value(),"Success",HttpStatus.OK);
        }
        catch (Exception ex) {
            return errorResponse(ex);
        }
    }

    @GetMapping("/")
    public ResponseEntity showAll() {
        try {
            List<BugSolution> list = developerService.showAll();
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
