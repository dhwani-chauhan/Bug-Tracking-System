package com.BTS.BugTrackingSystem.Model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@NoArgsConstructor
@Getter
@Setter
@ToString
@Table(name = "admin_tbl")
@Entity
@AllArgsConstructor
public class AdminClass {

    @Id
    @NotNull(message = "ID must not be empty")
    private int a_id;

    @NotBlank(message = "Message must not be empty")
    @Pattern(regexp = "[A-Za-z0-9 ]*", message = "Message must only contain alphabets, numerical and spaces")
    private String message;

    @NotBlank(message = "Reassign to (Emp Name) must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "Reassign to (Emp Name) must only contain alphabets and spaces")
    private String reassign_to;

    @NotBlank(message = "New Status of bug must not be empty")
    @Pattern(regexp = "[A-Za-z ]*", message = "New status must only contain alphabets and spaces")
    private String new_status;
    private String tested;
}
