@IsTest
private class DeploymentSampleTest {

    @IsTest
    static void testGetStatus() {
        // Act
        String result = DeploymentSampleTest.getStatus();

        // Assert
        System.assertEquals(
            '***01/08/2026***DEPLOYMENT_OK',
            result,
            'Deployment smoke test failed'
        );
    }
}
