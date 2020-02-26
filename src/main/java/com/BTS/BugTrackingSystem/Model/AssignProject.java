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
@Table(name = "assign_project")
public class AssignProject {

    @Id
    @NotBlank(message = "ID must not be empty")
    private int s_no;

    @NotBlank(message = "Project name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Project name must only contain alphabets and spaces")
    private String p_name;

    @NotBlank(message = "User ID must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "User ID must only contain alphabets and spaces")
    private String u_id;

    @NotBlank(message = "Designation of employee must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Designation of employee must only contain alphabets and spaces")
    private String role_emp;

}
