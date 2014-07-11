public class SObjectFieldValueJsCopyController {
    
    public Opportunity oppInput {get; set;}
    public Opportunity oppOutput {get; set;}
    
    public SObjectFieldValueJsCopyController(ApexPages.StandardController stdController) {
        this.oppInput = new Opportunity();
        this.oppOutput = new Opportunity();
    }
    
    public PageReference  doSave() {
        insert this.oppInput;
        return new PageReference('/' + this.oppInput.Id);
    }
}