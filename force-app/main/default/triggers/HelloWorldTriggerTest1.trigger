trigger HelloWorldTriggerTest1 on Account (before insert) {
    if(trigger.isBefore==True && Trigger.isInsert==True){
        HelloWorldApexClassTest1.TesttMethod(Trigger.New);
    }
   
}