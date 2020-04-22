package com.BTS.BugTrackingSystem.Service;

import com.BTS.BugTrackingSystem.Model.BugReport;
import com.BTS.BugTrackingSystem.Repository.BugReportRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TesterService {
    @Autowired
    private BugReportRepo reportRepo;

    public BugReport addBug(BugReport bugReport) throws Exception{
        if(bugReport == null)
            throw new Exception("No bug(s) reported");
        return reportRepo.save(bugReport);
    }

    public BugReport updateBug(BugReport bugReport,BugReport bugReport1) throws Exception{
        if(bugReport == null)
            throw new Exception("No Solution added");
        else if(!(bugReport1.getBug_name().equalsIgnoreCase(bugReport.getBug_name()))
                || (bugReport1.getBug_type().equalsIgnoreCase(bugReport.getBug_type()))
                    || (bugReport1.getBug_level() == bugReport.getBug_level())
                        || (bugReport1.getPriority().equalsIgnoreCase(bugReport.getPriority()))
                            || (bugReport1.getBug_date().equalsIgnoreCase(bugReport.getBug_date()))
                                || (bugReport.getB_rectifiedDate().equalsIgnoreCase(bugReport.getB_rectifiedDate()))){
            bugReport1.setBug_name(bugReport.getBug_name());
            bugReport1.setBug_type(bugReport.getBug_type());
            bugReport1.setBug_level(bugReport.getBug_level());
            bugReport1.setPriority(bugReport.getPriority());
            bugReport1.setBug_date(bugReport.getBug_date());
            bugReport1.setB_rectifiedDate(bugReport.getB_rectifiedDate());
        }
        return reportRepo.save(bugReport);
    }


    public void deleteBug(int id)
    {
        reportRepo.deleteById(id);
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

    public String checkStatus(int bug_no) throws Exception{
        String status = reportRepo.findById(bug_no).get().getStatus();
        return status;
    }

}
