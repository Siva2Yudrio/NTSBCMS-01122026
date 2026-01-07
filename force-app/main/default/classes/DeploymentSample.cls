public with sharing class DeploymentSample {

    /**
     * Simple method used only to validate CI/CD deployments.
     */
    public static String getStatus() {
        return 'DEPLOYMENT_OK';
    }
}
