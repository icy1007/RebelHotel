// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.unlv.cs.rebelhotel.domain;

import java.lang.String;

privileged aspect WorkEffort_Roo_ToString {
    
    public String WorkEffort.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Student: ").append(getStudent()).append(", ");
        sb.append("StartDate: ").append(getStartDate()).append(", ");
        sb.append("EndDate: ").append(getEndDate()).append(", ");
        sb.append("Hours: ").append(getHours()).append(", ");
        sb.append("WorkPosition: ").append(getWorkPosition()).append(", ");
        sb.append("Verification: ").append(getVerification()).append(", ");
        sb.append("Employer: ").append(getEmployer()).append(", ");
        sb.append("Comment: ").append(getComment()).append(", ");
        sb.append("Supervisor: ").append(getSupervisor());
        return sb.toString();
    }
    
}
