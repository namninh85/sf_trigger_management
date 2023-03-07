trigger accountTrigger on Account (before insert, before update, after insert, after update) {
    String triggerName = 'accountTrigger';  
    if(TriggerManagementUtil.runOnce()){
        if(Trigger.isBefore){
            if(TriggerManagementUtil.isTriggerBeTurnedOff(triggerName, true)){
                return;
            }
            else{
                System.debug('accountTrigger before run');
            }
        }
        else{
            if(TriggerManagementUtil.isTriggerBeTurnedOff(triggerName, false)){
                return;
            }
            else {
                System.debug('accountTrigger after run');
            }
        }
    }
    
}