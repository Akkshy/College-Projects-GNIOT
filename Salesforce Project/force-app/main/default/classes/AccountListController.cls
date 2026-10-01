public class AccountListController {
    
    public List <Account> accountList {get;set;}
    
    //Constructor to accept parameter of standard Controller
    public AccountListController(ApexPages.StandardController accValue){
        //Query the fields to fetch and display the data
        this.accountList = [select Id, Name, 
                            Industry, 
                            AnnualRevenue, 
                            Phone from Account where Industry = 'Energy'
                            order by  Name ASC Limit 10];
        
        
    } 

}