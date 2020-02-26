package com.BTS.BugTrackingSystem.Model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "employee")
@ToString
@Getter
@Setter
public class Developer {
    @Id
    @NotBlank(message = "Name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Name must only contain alphabets and spaces")
    private String user_name;

    @NotBlank(message = "ID must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "ID must only contain alphabets and spaces")
    private String user_id;

    @NotBlank(message = "Password must not be empty")
    @Pattern(regexp ="(?=.*[a-z])(?=.*\\d)(?=.*[A-Z]).{8,40}", message = "Password must contain a lowercase, a uppercase, a digit and it must be greater than 8 characters")
    private String u_password;

    @Email(message = "Email must not be empty")
    @Pattern(regexp="^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", message = "Email Address not valid")
    private String email;

    private String address;

    private String status;

    @NotBlank(message = "Contact number must not be empty")
    @Size(min = 10, max = 10, message = "Contact number must be of 10 digits")
    @Pattern(regexp = "^[^0].*", message="Contact number must not start with 0")
    private int ph_no;
}
