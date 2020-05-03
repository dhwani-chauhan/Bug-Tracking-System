package com.BTS.BugTrackingSystem.Model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "employee")
@ToString
@Getter
@Setter
public class Developer {
    @NotBlank(message = "Name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Name must only contain alphabets and spaces")
    private String username;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String user_id;

    @NotBlank(message = "Password must not be empty")
    @Pattern(regexp ="(?=.*[a-z])(?=.*\\d)(?=.*[A-Z]).{8,40}", message = "Password must contain a lowercase, a uppercase, a digit and it must be greater than 8 characters")
    private String password;

    @Email(message = "Email must not be empty")
    @Pattern(regexp="^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", message = "Email Address not valid")
    private String email;

    private String address;

    private String status;

    private String gender;

    private String dob;

    private String qualification;

    private String doj;

    private String role;

//    @NotBlank(message = "Contact number must not be empty")
//    @Size(min = 10, max = 10, message = "Contact number must be of 10 digits")
//    @Pattern(regexp = "^[^0].*", message="Contact number must not start with 0")
    private int ph_no;

    private boolean isRegistered = false;
}
