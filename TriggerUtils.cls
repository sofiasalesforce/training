
public class TriggerUtils
{
	/*
	*	@description Return the values of a specific sObject field.
	*	
	* 	Note:	sObject - all standard and custom objects, 
	*		Object - all primitive data types Decimal, String, Integer, Boolean
	*/
    	public static Set<Object> getFieldValue (List<sObject> sObjects, String fieldName)
	{
		/*
		*	TODO: Iterate over all 'sObjects' and return dynamically the values of the 'fieldName' field. 
		*/
		return null;
	}
	
	/*
	*	@description Return only records with modified field values in 'fieldList'.
	*	Input: 
	*		newList - Trigger.new records
	*		oldMap - Trigger.oldMap records
	*		fieldList - List of custom or standard sObject-fields.
	*/
	public static List<sObject> getModifiedRecords (List<sObject> newList, Map<Id, sObject> oldMap, List<String> fieldList)
	{
		List<sObject> result = new List<sObject>();
		if(newList == null)
		{
			// OnDelete - return an empty list. No records has been changed
			return result;
		}
		if(oldList == null)
		{
			// OnInsert - return all records from 'newList'
			return newList;
		}

		for (sObject newObj : newList)
		{
            		// On Update - newList and oldMap are not NULL
			// TODO: Iterate over the sObjects and compare the fields from newList and oldMap
			// TODO: add the 'obj' to the 'result' if one of the field from 'fieldList' has been changed
		}
		return result;
	}
}
