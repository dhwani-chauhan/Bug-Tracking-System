package com.BTS.BugTrackingSystem.Model;

import lombok.*;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@AllArgsConstructor
@NoArgsConstructor
@Table(name = "bug_solution")
public class BugSolution {

    @Id
    @NotBlank(message = "ID must not be empty")
    private int bug_no;
    private String e_code;

    @NotBlank(message = "Solution must not be empty")
    @Pattern(regexp = "[A-Za-z0-9 ]*", message = "Solution must only contain alphabets, numericals and spaces")
    private String solution;

    @NotBlank(message = "Bug date must not be empty")
    @Pattern(regexp = "[0-9 ]*", message = "Bug date must only contain Numerical")
    private String b_date;

    public int getBug_no() {
        return bug_no;
    }

    public void setBug_no(int bug_no) {
        this.bug_no = bug_no;
    }

    public String getE_code() {
        return e_code;
    }

    public void setE_code(String e_code) {
        this.e_code = e_code;
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    public String getB_date() {
        return b_date;
    }

    public void setB_date(String b_date) {
        this.b_date = b_date;
    }

    @Override
    public String toString() {
        return "BugSolution{" +
                "bug_no=" + bug_no +
                ", e_code='" + e_code + '\'' +
                ", solution='" + solution + '\'' +
                ", b_date='" + b_date + '\'' +
                '}';
    }
}
