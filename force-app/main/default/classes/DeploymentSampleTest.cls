@IsTest
private class DeploymentSampleTest {

    @IsTest
    static void testGetStatus_returnsExpectedValue() {
        // Act
        String result = DeploymentSample.getStatus();

        // Assert
        System.assertNotEquals(
            null,
            result,
            'getStatus() should not return null'
        );

        System.assertEquals(
            '***01/09/2026***Validation Test-4',
            result,
            'DeploymentSample.getStatus() returned an unexpected value'
        );
    }
}
