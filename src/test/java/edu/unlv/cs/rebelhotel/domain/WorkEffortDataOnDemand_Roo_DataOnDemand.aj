// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.unlv.cs.rebelhotel.domain;

import edu.unlv.cs.rebelhotel.domain.EmployerDataOnDemand;
import edu.unlv.cs.rebelhotel.domain.StudentDataOnDemand;
import edu.unlv.cs.rebelhotel.domain.WorkEffort;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect WorkEffortDataOnDemand_Roo_DataOnDemand {
    
    declare @type: WorkEffortDataOnDemand: @Component;
    
    private Random WorkEffortDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<WorkEffort> WorkEffortDataOnDemand.data;
    
    @Autowired
    private StudentDataOnDemand WorkEffortDataOnDemand.studentDataOnDemand;
    
    @Autowired
    private EmployerDataOnDemand WorkEffortDataOnDemand.employerDataOnDemand;
    
    public WorkEffort WorkEffortDataOnDemand.getNewTransientWorkEffort(int index) {
        edu.unlv.cs.rebelhotel.domain.WorkEffort obj = new edu.unlv.cs.rebelhotel.domain.WorkEffort();
        obj.setStudent(studentDataOnDemand.getRandomStudent());
        obj.setStartDate(new java.util.GregorianCalendar(java.util.Calendar.getInstance().get(java.util.Calendar.YEAR), java.util.Calendar.getInstance().get(java.util.Calendar.MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY), java.util.Calendar.getInstance().get(java.util.Calendar.MINUTE), java.util.Calendar.getInstance().get(java.util.Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime());
        obj.setEndDate(new java.util.GregorianCalendar(java.util.Calendar.getInstance().get(java.util.Calendar.YEAR), java.util.Calendar.getInstance().get(java.util.Calendar.MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY), java.util.Calendar.getInstance().get(java.util.Calendar.MINUTE), java.util.Calendar.getInstance().get(java.util.Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime());
        obj.setHours(new Integer(index));
        obj.setWorkPosition("workPosition_" + index);
        obj.setVerification(null);
        obj.setEmployer(employerDataOnDemand.getRandomEmployer());
        obj.setComment("comment_" + index);
        obj.setSupervisor(null);
        return obj;
    }
    
    public WorkEffort WorkEffortDataOnDemand.getSpecificWorkEffort(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        WorkEffort obj = data.get(index);
        return WorkEffort.findWorkEffort(obj.getId());
    }
    
    public WorkEffort WorkEffortDataOnDemand.getRandomWorkEffort() {
        init();
        WorkEffort obj = data.get(rnd.nextInt(data.size()));
        return WorkEffort.findWorkEffort(obj.getId());
    }
    
    public boolean WorkEffortDataOnDemand.modifyWorkEffort(WorkEffort obj) {
        return false;
    }
    
    public void WorkEffortDataOnDemand.init() {
        data = edu.unlv.cs.rebelhotel.domain.WorkEffort.findWorkEffortEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'WorkEffort' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<edu.unlv.cs.rebelhotel.domain.WorkEffort>();
        for (int i = 0; i < 10; i++) {
            edu.unlv.cs.rebelhotel.domain.WorkEffort obj = getNewTransientWorkEffort(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
