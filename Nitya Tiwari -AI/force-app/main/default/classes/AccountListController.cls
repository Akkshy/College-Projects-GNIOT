public class AccountListController {
    
    public List<Account> accountList{get;set;}
    
    public AccountListController(Apexpages.StandardController accValue){
        
        this.accountList=[select Id,Name,
                           Industry,
                           AnnualRevenue,
                           phone from Account where Industry ='Energy' 
                          order by Name ASC Limit 10];
        
        
        
    }

}