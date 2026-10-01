public class AccountListController {
    public List <Account> accountlist{get;set;}
    
    //constructor
    public AccountListController(ApexPages.StandardController accValue){
        //query the fields to fetch and display the data 
        this.accountList=[select Id,Name,
                          Industry,
                          AnnualRevenue,
                          Phone from Account where Industry = 'Energy'
                          order by Name ASC Limit 10];
        
            
    }
    
    
        
     
    
}