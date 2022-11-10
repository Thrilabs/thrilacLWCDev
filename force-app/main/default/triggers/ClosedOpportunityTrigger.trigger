trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Opportunity> VarOppList = [SELECT Id, Name From Opportunity WHERE StageName = 'Closed Won' and Id IN : Trigger.New];
        List<Task> TaskList = new List<Task>();
    for(Opportunity Opp : VarOppList){
        Task VarTask = new Task();
        VarTask.Subject = 'Follow Up Test Task';
        VarTask.WhatId = Opp.Id;
        TaskList.add(VarTask);
    }
    if(TaskList.size()>0){
        Insert TaskList;
    }
}