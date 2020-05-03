package com.BTS.BugTrackingSystem.Model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Table(name = "project_details")
public class ProjectDetails {

    @Id
    @NotNull(message = "ID must not be empty")
    private int p_no;

    @NotBlank(message = "Project name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Project name must only contain alphabets and spaces")
    private String p_name;

    @NotBlank(message = "Project description must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Project description must only contain alphabets and spaces")
    private String p_desc;

    @NotBlank(message = "Project start date must not be empty")
    @Pattern(regexp = "[0-9 ]*", message = "Project start date must only contain Numerical")
    private String s_date;

    @NotNull(message = "Duration of project must not be empty")
   // @Pattern(regexp = "[0-9 ]*", message = "Duration of project must only contain Numerical")
    private int duration;

    @NotBlank(message = "Client Name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Client Name must only contain alphabets and spaces")
    private String c_name;

    @NotBlank(message = "Client address must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Client address must only contain alphabets and spaces")
    private String c_address;

    @Email(message = "Email must not be empty")
    @Pattern(regexp="^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", message = "Email Address not valid")
    private String c_email;

    @NotNull(message = "Contact number must not be empty")
   // @Size(min = 10, max = 10, message = "Contact number must be of 10 digits")
   // @Pattern(regexp = "^[^0].*", message="Contact number must not start with 0")
    private int c_phno;

    @NotBlank(message = "Project lead Name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Project lead Name must only contain alphabets and spaces")
    private String p_lead;

    @NotBlank(message = "Department Name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Department Name must only contain alphabets and spaces")
    private String dept_name;
}
