package com.BTS.BugTrackingSystem.Model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

public class LogIn {

//    @Id
    @NotBlank(message = "Name must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Name must only contain alphabets and spaces")
    private String username;

    @NotBlank(message = "Password must not be empty")
    @Pattern(regexp ="(?=.*[a-z])(?=.*\\d)(?=.*[A-Z]).{8,40}", message = "Password must contain a lowercase, a uppercase, a digit and it must be greater than 8 characters")
    private String password;

    private boolean isRegistered;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isRegistered() {
        return isRegistered;
    }

    public void setRegistered(boolean registered) {
        isRegistered = registered;
    }
}
