public class ContactListController {

    public List<Contact> contactList {get; set;}

    public ContactListController(ApexPages.StandardController conValue) {

        contactList = [
            SELECT Id,
                   Name,
                   Email,
                   Phone,
                   Title,
                   Account.Name
            FROM Contact
            WHERE Account.Industry = 'Energy'
            ORDER BY Name ASC
            LIMIT 10
        ];
    }
}