// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.unlv.cs.rebelhotel.domain;

import java.lang.String;

privileged aspect Supervisor_Roo_ToString {
    
    public String Supervisor.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FirstName: ").append(getFirstName()).append(", ");
        sb.append("LastName: ").append(getLastName()).append(", ");
        sb.append("Email: ").append(getEmail()).append(", ");
        sb.append("Title: ").append(getTitle());
        return sb.toString();
    }
    
}