public class AccountPickCtrl
{
    public Account acc{get;set;}
    public List<Account> listAcc{get;set;}
    public AccountPickCtrl()
    {
        acc = new Account();
        listAcc = new List<Account>();
    }
    //Capitalized alphabet  'S'
    public void actionSupportMethod()
    {
        System.debug('Action++'+acc.Rating);
        listAcc = new List<Account>();
        listAcc = [Select Id,Name,Rating FROM Account WHERE Rating =: acc.Rating];
        system.debug('listAcc++'+listAcc);
    }
}