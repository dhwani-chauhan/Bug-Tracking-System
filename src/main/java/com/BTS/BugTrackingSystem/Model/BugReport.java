package com.BTS.BugTrackingSystem.Model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@NoArgsConstructor
@Getter
@Setter
@ToString
@Table(name = "bug_report")
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
}
