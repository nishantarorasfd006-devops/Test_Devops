public class AccountController {
    
    public static List<Account> getAccount() {
        System.debug('12345');
        List<Account> acclist = [SELECT Id from Account];
    return acclist;

    }
}