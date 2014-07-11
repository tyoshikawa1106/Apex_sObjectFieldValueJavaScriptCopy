@isTest
private class SObjectFieldValueJsCopyControllerTest {

    static testMethod void SObjectFieldValueJsCopyControllerTest() {
        
        Test.startTest();
        
        SObjectFieldValueJsCopyController cls = new SObjectFieldValueJsCopyController(new ApexPages.StandardController(new Opportunity()));
        cls.oppInput.Name = 'Name';
        cls.oppInput.CloseDate = date.newInstance(2011, 10, 5);
        cls.oppInput.StageName = '提案';
        cls.doSave();
        
        Test.stopTest();
    }
}