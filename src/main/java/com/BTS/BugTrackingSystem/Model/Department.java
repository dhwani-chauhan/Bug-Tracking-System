package com.BTS.BugTrackingSystem.Model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Entity
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Department {

    @Id
    @NotBlank(message = "ID must not be empty")
    private int d_id;

    @NotBlank(message = "Department name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Department name must only contain alphabets and spaces")
    private String d_name;

    @NotBlank(message = "Department location must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Department location must only contain alphabets and spaces")
    private String location;
}
