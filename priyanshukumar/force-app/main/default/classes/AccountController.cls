public with sharing class AccountController {
    @AuraEnabled(cacheable=true) // hlo 
    // line 2
    // line 3
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, Industry, Phone FROM Account LIMIT 10];
    }
}