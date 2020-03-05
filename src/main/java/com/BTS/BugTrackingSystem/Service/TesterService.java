package com.BTS.BugTrackingSystem.Service;

import com.BTS.BugTrackingSystem.Model.BugReport;
import com.BTS.BugTrackingSystem.Repository.BugReportRepo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TesterService {

    private BugReportRepo reportRepo;

    public BugReport addBug(BugReport bugReport) throws Exception{
        if(bugReport == null)
            throw new Exception("No bug(s) reported");
        return reportRepo.save(bugReport);
    }
    public BugReport findById(int id) throws Exception{
        Optional<BugReport> bugReport = reportRepo.findById(id);
        if(!bugReport.isPresent())
            throw new Exception("No such bug reported exist");
        return bugReport.get();
    }

    public List<BugReport> showAll() throws Exception{
        List<BugReport> bugReports = reportRepo.findAll();
        if(bugReports.isEmpty())
            throw new Exception("No bug report(s) is present");
        return bugReports;
    }

}
