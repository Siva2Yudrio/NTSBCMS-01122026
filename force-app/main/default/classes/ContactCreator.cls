public with sharing class ContactCreator {

    /**
     * Creates a Contact with the minimum fields typically required.
     * Standard requirement: LastName.
     *
     * @param lastName Contact last name (required)
     * @return The inserted Contact record (with Id populated)
     */
    public static Contact createMinimalContact(String lastName) {
        if (String.isBlank(lastName)) {
            throw new IllegalArgumentException('lastName is required.');
        }

        Contact c = new Contact(
            LastName = lastName
        );

        insert c;
        return c;
    }