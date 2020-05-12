public with sharing class AccountSearchController {  

    // Matching Accounts
    Transient public List<account> acc {get;set;}  
    
    // Search Text entered by user
    public string searchString {get;set;}  
    
    // Action method to search for Accounts  
    public void search() {  
     
        try {
            String searchWord = searchString + '%';  
            acc= [SELECT AccountNumber,Name,Phone,Industry,Website 
                  FROM Account 
                  WHERE Name like : searchWord]; 
         } catch (System.QueryException ex) {
             ApexPages.addMessages(ex);
         } 
    }  
       
    
 }