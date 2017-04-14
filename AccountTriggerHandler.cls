public with sharing class AccountTriggerHandler extends TriggerHandler
{
	private Map<Id, Account> oldMap;
	private List<Account> newList;
	
  	public AccountTriggerHandler ()
	{
		this.oldMap = (Map<Id, Account>) Trigger.oldMap;
		this.newList = Trigger.new;
	}
  
	public override void afterInsert ()
 	{
		printAccountName();
	}
	
	public override void afterUpdate ()
	{
		printAccountName();
	}
   
	private void printAccountName ()
	{
    		// TODO: Print the new Account.Name, only if the Name field has been changed. 
	}
}
