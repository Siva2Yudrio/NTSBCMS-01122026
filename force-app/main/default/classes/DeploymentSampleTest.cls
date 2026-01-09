@IsTest
private class DeploymentSampleTest {
    // GitHub workflow PR validation test-01092026-Test-5
    @IsTest
    static void testGetStatus() {
        // Act
        String result = DeploymentSample.getStatus();

        // Assert
        System.assertEquals(
            '***01/09/2026***DEPLOYMENT_OK',
            result,
            'Deployment smoke test failed'
        );
    }
}
