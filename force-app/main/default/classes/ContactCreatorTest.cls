@isTest
public with sharing class ContactCreatorTest {

    @isTest
    static void testCreateMinimalContactSuccess() {

        Test.startTest();

        Contact created = ContactCreator.createMinimalContact('TestLastName');

        Test.stopTest();

        System.assertNotEquals(null, created.Id, 'Contact record should be inserted.');
        System.assertEquals('TestLastName', created.LastName, 'LastName should match the input parameter.');
    }

    @isTest
    static void testCreateMinimalContactException() {

        Boolean isException = false;

        try {
            Test.startTest();

            ContactCreator.createMinimalContact('');

            Test.stopTest();
        } catch (IllegalArgumentException ex) {
            isException = true;

            System.assertEquals('lastName is required.', ex.getMessage(), 
                'Exception message should match the one defined in the class.');
        }

        System.assertEquals(true, isException, 
            'IllegalArgumentException should be thrown when LastName is blank.');
    }
}
