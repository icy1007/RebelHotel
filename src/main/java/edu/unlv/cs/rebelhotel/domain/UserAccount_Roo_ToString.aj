// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.unlv.cs.rebelhotel.domain;

import java.lang.String;

privileged aspect UserAccount_Roo_ToString {
    
    public String UserAccount.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PasswordEncoder: ").append(getPasswordEncoder()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Password: ").append(getPassword()).append(", ");
        sb.append("UserGroup: ").append(getUserGroup()).append(", ");
        sb.append("Enabled: ").append(getEnabled());
        return sb.toString();
    }
    
}
