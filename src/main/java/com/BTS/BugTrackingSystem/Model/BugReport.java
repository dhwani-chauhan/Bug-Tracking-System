package com.BTS.BugTrackingSystem.Model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@NoArgsConstructor
@AllArgsConstructor
@Table(name = "bug_report")
@Entity
public class BugReport {
    @Id
    @NotBlank(message = "ID must not be empty")
    private int bug_no;

    @NotBlank(message = "Bug Name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Bug Name must only contain alphabets and spaces")
    private String bug_name;

    @NotBlank(message = "Bug Type must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Bug type must only contain alphabets and spaces")
    private String bug_type;

    @NotBlank(message = "Bug Level must not be empty")
    @Pattern(regexp = "[0-9 ]*", message = "Bug Level must only contain Numericals")
    private int bug_level;

    @NotBlank(message = "Priority must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Priority must only contain alphabets and spaces")
    private String priority;
    private String pname;
    private String tester_code;

    @NotBlank(message = "Bug date must not be empty")
    @Pattern(regexp = "[0-9 ]*", message = "Bug date must only contain Numericals")
    private String bug_date;
    private String e_code;
    private String status;

    @NotBlank(message = "Bug rectified date must not be empty")
    @Pattern(regexp = "[0-9 ]*", message = "Bug rectified date must only contain Numericals")
    private String b_rectifiedDate;

    public int getBug_no() {
        return bug_no;
    }

    public String getBug_name() {
        return bug_name;
    }

    public String getBug_type() {
        return bug_type;
    }

    public int getBug_level() {
        return bug_level;
    }

    public String getPriority() {
        return priority;
    }

    public String getPname() {
        return pname;
    }

    public String getTester_code() {
        return tester_code;
    }

    public String getBug_date() {
        return bug_date;
    }

    public String getE_code() {
        return e_code;
    }

    public String getStatus() {
        return status;
    }

    public String getB_rectifiedDate() {
        return b_rectifiedDate;
    }

    public void setBug_no(int bug_no) {
        this.bug_no = bug_no;
    }

    public void setBug_name(String bug_name) {
        this.bug_name = bug_name;
    }

    public void setBug_type(String bug_type) {
        this.bug_type = bug_type;
    }

    public void setBug_level(int bug_level) {
        this.bug_level = bug_level;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public void setTester_code(String tester_code) {
        this.tester_code = tester_code;
    }

    public void setBug_date(String bug_date) {
        this.bug_date = bug_date;
    }

    public void setE_code(String e_code) {
        this.e_code = e_code;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setB_rectifiedDate(String b_rectifiedDate) {
        this.b_rectifiedDate = b_rectifiedDate;
    }

    @Override
    public String toString() {
        return "BugReport{" +
                "bug_no=" + bug_no +
                ", bug_name='" + bug_name + '\'' +
                ", bug_type='" + bug_type + '\'' +
                ", bug_level=" + bug_level +
                ", priority='" + priority + '\'' +
                ", pname='" + pname + '\'' +
                ", tester_code='" + tester_code + '\'' +
                ", bug_date='" + bug_date + '\'' +
                ", e_code='" + e_code + '\'' +
                ", status='" + status + '\'' +
                ", b_rectifiedDate='" + b_rectifiedDate + '\'' +
                '}';
    }
}
