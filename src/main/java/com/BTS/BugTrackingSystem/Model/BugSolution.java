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
}
