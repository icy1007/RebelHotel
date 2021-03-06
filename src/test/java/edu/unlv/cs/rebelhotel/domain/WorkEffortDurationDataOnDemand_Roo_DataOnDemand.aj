// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package edu.unlv.cs.rebelhotel.domain;

import edu.unlv.cs.rebelhotel.domain.WorkEffortDuration;
import java.util.List;
import java.util.Random;
import org.springframework.stereotype.Component;

privileged aspect WorkEffortDurationDataOnDemand_Roo_DataOnDemand {
    
    declare @type: WorkEffortDurationDataOnDemand: @Component;
    
    private Random WorkEffortDurationDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<WorkEffortDuration> WorkEffortDurationDataOnDemand.data;
    
    public WorkEffortDuration WorkEffortDurationDataOnDemand.getNewTransientWorkEffortDuration(int index) {
        edu.unlv.cs.rebelhotel.domain.WorkEffortDuration obj = new edu.unlv.cs.rebelhotel.domain.WorkEffortDuration();
        obj.setStartDate(new java.util.GregorianCalendar(java.util.Calendar.getInstance().get(java.util.Calendar.YEAR), java.util.Calendar.getInstance().get(java.util.Calendar.MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY), java.util.Calendar.getInstance().get(java.util.Calendar.MINUTE), java.util.Calendar.getInstance().get(java.util.Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime());
        obj.setEndDate(new java.util.GregorianCalendar(java.util.Calendar.getInstance().get(java.util.Calendar.YEAR), java.util.Calendar.getInstance().get(java.util.Calendar.MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY), java.util.Calendar.getInstance().get(java.util.Calendar.MINUTE), java.util.Calendar.getInstance().get(java.util.Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime());
        obj.setHours(new Integer(index));
        return obj;
    }
    
    public WorkEffortDuration WorkEffortDurationDataOnDemand.getSpecificWorkEffortDuration(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        WorkEffortDuration obj = data.get(index);
        return WorkEffortDuration.findWorkEffortDuration(obj.getId());
    }
    
    public WorkEffortDuration WorkEffortDurationDataOnDemand.getRandomWorkEffortDuration() {
        init();
        WorkEffortDuration obj = data.get(rnd.nextInt(data.size()));
        return WorkEffortDuration.findWorkEffortDuration(obj.getId());
    }
    
    public boolean WorkEffortDurationDataOnDemand.modifyWorkEffortDuration(WorkEffortDuration obj) {
        return false;
    }
    
    public void WorkEffortDurationDataOnDemand.init() {
        data = edu.unlv.cs.rebelhotel.domain.WorkEffortDuration.findWorkEffortDurationEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'WorkEffortDuration' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<edu.unlv.cs.rebelhotel.domain.WorkEffortDuration>();
        for (int i = 0; i < 10; i++) {
            edu.unlv.cs.rebelhotel.domain.WorkEffortDuration obj = getNewTransientWorkEffortDuration(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
