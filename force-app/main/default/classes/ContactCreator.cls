public with sharing class ContactCreator {

    /**
     * Creates a Contact with the minimum fields typically required.
     * Standard requirement: LastName.
     *
     * @param lastName  Contact last name (required)
     * @param firstName Contact first name (optional)
     * @return The inserted Contact record (with Id populated)
     * ***01/09/2026***Validation Test-01132026-* 5***
     */
    public static Contact createMinimalContact(String lastName, String firstName) {
        if (String.isBlank(lastName)) {
            throw new IllegalArgumentException('LastName is required.');
        }

        Contact c = new Contact(
            LastName  = lastName,
            FirstName = firstName
        );

        insert c;
        return c;
    }
}