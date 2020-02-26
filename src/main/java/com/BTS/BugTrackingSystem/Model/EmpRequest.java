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
@Table(name = "employee_request")
public class EmpRequest {
    @Id
    @NotBlank(message = "ID must not be empty")
    private int e_req;

    @NotBlank(message = "r_to(receiver) must not be empty")
    private String r_to;

    @NotBlank(message = "r_from(sender) must not be empty")
    private String r_from;

    @NotBlank(message = "Subject must not be empty")
    @Pattern(regexp = "[A-Za-z0-9 ]*", message = "Subject must only contain alphabets and spaces")
    private String r_subject;

    @NotBlank(message = "Message must not be empty")
    @Pattern(regexp = "[A-Za-z0-9 ]*", message = "Message must only contain alphabets and spaces")
    private String r_message;

    private String r_tested;
}
