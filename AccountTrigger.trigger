trigger AccountTrigger on Account (after delete, after insert, after update, before delete, before insert, before update)
{
    // Forward the trigger execution to the AccountTriggerHandler apex class
    new AccountTriggerHandler().run();
}
