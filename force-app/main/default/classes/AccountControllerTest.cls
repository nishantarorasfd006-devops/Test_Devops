@isTest
public class AccountControllerTest {
    @isTest
    static void testGetAccount() {
        // Step 1: Create test data
        Account testAcc1 = new Account(Name = 'Test Account 1');
        Account testAcc2 = new Account(Name = 'Test Account 2');
        insert new List<Account>{testAcc1, testAcc2};
        
        // Step 2: Call the method
        List<Account> result = AccountController.getAccount();
        
        // Step 3: Assert the results
        System.assertEquals(2, result.size(), 'There should be 2 accounts returned');
        System.assert(result.contains(testAcc1), 'Result should contain Test Account 1');
        System.assert(result.contains(testAcc2), 'Result should contain Test Account 2');
    }

}