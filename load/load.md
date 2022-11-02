# Load the data to ATP

## Introduction

This lab walks you through the steps to create and run an Extract in the Oracle Cloud Infrastructure (OCI) GoldenGate Deployment Console.

Estimated time: 15 minutes

### About Trandata 

Use ADD TRANDATA to enable Oracle GoldenGate to acquire the transaction information that it needs from the transaction records.

### Objectives

In this lab, you will:
* Log in to the OCI GoldenGate deployment console
* Add transaction data and a checkpoint table


### Prerequisites

This lab assumes that you completed all preceding labs, and your deployment is in the Active state.

## Task 1: Log in to the Oracle GoldenGate Deployment Console

1.  Use the Oracle Cloud Console navigation menu to navigate back to GoldenGate.

2.  On the Deployments page, select **GGSDeployment**.

3.  On the Deployment Details page, click **Launch Console**.

    ![Deployment Details page](images/01-03-ggs-launchconsole.png " ")

4.  On the OCI GoldenGate Deployment Console sign in page, enter **oggadmin** for User Name and the password you provided when you created the deployment, and then click **Sign In**.

    ![OCI GoldenGate Deployment Console Sign In](images/01-04.png " ")

    You're brought to the OCI GoldenGate Deployment Console Home page after successfully signing in.

5. Click on extract name ***UAEXT*** and Navigate to **Statistics** tab

## Task 2: Load a data to source ATP schema

1.  Click the following link to download the database schema.

    [LOAD_DATA.sql](./files/LOAD_DATA.sql)

2.  Back in the OCI Console, select your ATP instance from the Autonomous Databases page to view its details and access tools.

    ![Select your Autonomous Database instance](./images/02-03-atp.png " ")

3.  Click **Open DB Actions**.

4.  Log in with the ADMIN user and password provided when you created the ATP instance.

    ![DB Actions log in page](./images/02-05-login.png " ")

5.  From the Database Actions menu, under **Development**, select **SQL**.

    ![Database Actions page](./images/02-06-db-actions.png " ")

6.  (Optional) Click **X** to close the Help dialog.

7.  Copy and paste the SQL script from **LOAD_DATA.sql** into the SQL Worksheet.

    ![Pasted script in SQL Worksheet](./images/02-08-atp-sql.png " ")

8.  Click **Run Script**. The Script Output tab displays confirmation messages.


## Task 3: Log in to the Oracle GoldenGate BigData Deployment Console

1.  Use the Oracle Cloud Console navigation menu to navigate back to GoldenGate.

2.  On the Deployments page, select **GGBD DEPLOYMENT**.

3.  On the Deployment Details page, click **Launch Console**.

    ![Deployment GGBD  Details page](images/01-03-ggbd-launchconsole.png " ")

4.  On the OCI GoldenGate Deployment Console sign in page, enter **oggadmin** for User Name and the password you provided when you created the deployment, and then click **Sign In**.

    ![OCI GoldenGate Deployment Console Sign In](images/01-04.png " ")

    You're brought to the OCI GoldenGate Deployment Console Home page after successfully signing in.

5. Click on Replicat name ***kafkaRep*** and Navigate to **Statistics** tab

    ![OCI ggbd-statistics](images/ggbd-statistics.png " ")




## Acknowledgements
* **Author** - Madhu Kumar S, AppDev and Integration, Bangalore Tech Teame
* **Contributors** -  Deniz Sendil, Database Product Management; Jenny Chan, Consulting User Assistance Developer
* **Last Updated By/Date** - 
