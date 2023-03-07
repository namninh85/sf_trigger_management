public without sharing class TriggerManagementUtil {
   
    private static boolean run = true;
    public static boolean runOnce(){
        if(run){
            run=false;
            return true;
        }else{
            return run;
        }
    }

    public static boolean isTriggerBeTurnedOff(String triggerNameInput, boolean isBefore){
        try {
            String triggerName = triggerNameInput + '_' + (isBefore ?'before':'after');
            Trigger_Management__c objCustomSetting= Trigger_Management__c.getInstance(triggerName);
            if(objCustomSetting != null && objCustomSetting.Is_Turned_off__c)
            { 
                return true;
            }
            return false;
        }
        catch(Exception e){
            return false;
        }
        

    } 
}