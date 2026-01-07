@IsTest
private class DeploymentSampleTest {

    @IsTest
    static void testGetStatus() {
        // Act
        String result = DeploymentSampleTest.getStatus();

        // Assert
        System.assertEquals(
            'DEPLOYMENT_OK',
            result,
            'Deployment smoke test failed'
        );
    }
}
