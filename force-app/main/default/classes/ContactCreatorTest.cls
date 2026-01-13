@isTest
public with sharing class ContactCreatorTest {
    // * ***01/09/2026***Validation Test-01122026-12***
    @isTest
    static void testCreateMinimalContactSuccess() {

        Test.startTest();
        Contact created = ContactCreator.createMinimalContact('TestLastName', 'TestFirstName');
        Test.stopTest();

        System.assertNotEquals(null, created.Id,
            'Contact record should be inserted.');
        System.assertEquals('TestLastName', created.LastName,
            'LastName should match the input parameter.');
        System.assertEquals('TestFirstName', created.FirstName,
            'FirstName should match the input parameter.');
    }

    @isTest
    static void testCreateMinimalContactException() {

        Boolean isExceptionThrown = false;

        try {
            Test.startTest();
            ContactCreator.createMinimalContact('', 'TestFirstName');
            Test.stopTest();
        } catch (IllegalArgumentException ex) {
            isExceptionThrown = true;

            System.assertEquals(
                'LastName is required.',
                ex.getMessage(),
                'Exception message should match the one defined in the class.'
            );
        }

        System.assertEquals(
            true,
            isExceptionThrown,
            'IllegalArgumentException should be thrown when LastName is blank.'
        );
    }
}
