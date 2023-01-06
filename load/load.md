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

## Task 1: Load a data to source ATP schema

1.  In the OCI Console, select your ATP instance from the Autonomous Databases page to view its details and access tools.

    ![Select your Autonomous Database instance](./images/02-03-atp.png " ")

2.  Click **Open DB Actions**.

3.  Log in with the ADMIN user and password provided when you created the ATP instance.

    ![DB Actions log in page](./images/02-05-login.png " ")

4.  From the Database Actions menu, under **Development**, select **SQL**.

    ![Database Actions page](./images/02-06-db-actions.png " ")

5.  (Optional) Click **X** to close the Help dialog.

7.  Copy the SQL script and paste into the SQL Worksheet.

    ```
<copy>
Insert into SRC_OCIGGLL.SRC_CITY  values (10,'Houston',20,743113);
Insert into SRC_OCIGGLL.SRC_CITY  values (11,'Dallas',20,822416);
Insert into SRC_OCIGGLL.SRC_CITY  values (12,'San Francisco',21,157574);
Insert into SRC_OCIGGLL.SRC_CITY  values (13,'Los Angeles',21,743878);
Insert into SRC_OCIGGLL.SRC_CITY  values (14,'San Diego',21,840689);
Insert into SRC_OCIGGLL.SRC_ORDER_LINES values (1,1,1,549,59292);
Insert into SRC_OCIGGLL.SRC_ORDER_LINES values (1,2,2,1477,146223);
Insert into SRC_OCIGGLL.SRC_ORDER_LINES values (1,3,3,1163,20934);
Insert into SRC_OCIGGLL.SRC_ORDER_LINES values (2,1,4,1689,136809);
Insert into SRC_OCIGGLL.SRC_ORDER_LINES values (2,2,5,1829,172840.5);
Insert into SRC_OCIGGLL.SRC_PRODUCT values (1,'Gold Watch',120,'Watches');
Insert into SRC_OCIGGLL.SRC_PRODUCT values (2,'Silver Watch',110,'Watches');
Insert into SRC_OCIGGLL.SRC_PRODUCT values (3,'Earrings',20,'Jewels');
Insert into SRC_OCIGGLL.SRC_PRODUCT values (4,'Gold Bracelet',90,'Jewels');
Insert into SRC_OCIGGLL.SRC_PRODUCT values (5,'Silver Collar',105,'Jewels');
Insert into SRC_OCIGGLL.SRC_REGION values (20,'South',1,'USA');
Insert into SRC_OCIGGLL.SRC_REGION values (21,'West',1,'USA');
Insert into SRC_OCIGGLL.SRC_REGION values (22,'East Coast',1,'USA');
Insert into SRC_OCIGGLL.SRC_REGION values (23,'Mid West',1,'USA');
Insert into SRC_OCIGGLL.SRC_REGION values (30,'Paris',2,'France');
Insert into SRC_OCIGGLL.SRC_ORDERS  values (1,'COM',1001,to_date('11-JAN-01','DD-MON-RR'),null);
Insert into SRC_OCIGGLL.SRC_ORDERS  values (2,'CLO',1002,to_date('12-FEB-99','DD-MON-RR'),null);
Insert into SRC_OCIGGLL.SRC_ORDERS  values (3,'CLO',103,to_date('23-MAR-90','DD-MON-RR'),null);
Insert into SRC_OCIGGLL.SRC_ORDERS  values (4,'CLO',104,to_date('26-APR-91','DD-MON-RR'),null);
Insert into SRC_OCIGGLL.SRC_ORDERS  values (5,'COM',105,to_date('10-MAY-98','DD-MON-RR'),null);
Insert into SRC_OCIGGLL.SRC_CUSTOMER values (101,0,'Brendt','Paul','10 Jasper Blvd.',107,'(212) 555 2146',19,10);
Insert into SRC_OCIGGLL.SRC_CUSTOMER values (102,0,'McCarthy','Robin','27 Pasadena Drive',11,'(214) 555 3075',29,11);
Insert into SRC_OCIGGLL.SRC_CUSTOMER values (103,0,'Travis','Peter','7835 Hartford Drive',12,'(510) 555 4448',34,12);
Insert into SRC_OCIGGLL.SRC_CUSTOMER values (104,0,'Larson','Joe','87 Carmel Blvd.',13,'(213) 555 5095',45,13);
Insert into SRC_OCIGGLL.SRC_CUSTOMER values (105,0,'Goldschmidt','Tony','91 Torre drive',14,'(619) 555 6529',55,20);

</copy>
    ```
    ![Pasted script in SQL Worksheet](./images/02-08-atp-sql.png " ")

8.  Click **Run Script**. The Script Output tab displays confirmation messages.

## Task 2: Log in to the Oracle GoldenGate Deployment Console

1.  Use the Oracle Cloud Console navigation menu to navigate back to GoldenGate.

2.  On the Deployments page, select **GGSDeployment**.

3.  On the Deployment Details page, click **Launch Console**.

    ![Deployment Details page](images/01-03-ggs-launchconsole.png " ")

4.  On the OCI GoldenGate Deployment Console sign in page, enter **oggadmin** for User Name and the password you provided when you created the deployment, and then click **Sign In**.

    ![OCI GoldenGate Deployment Console Sign In](images/01-04.png " ")

    You're brought to the OCI GoldenGate Deployment Console Home page after successfully signing in.

5. Click on extract name ***UAEXT*** and Navigate to **Statistics** tab.Verify that **each table** will have ***5*** inserts.
 ![OCI ggs-statistics](images/ggs-statistics.png " ")

## Task 3: Log in to the Oracle GoldenGate BigData Deployment Console

1.  Use the Oracle Cloud Console navigation menu to navigate back to GoldenGate.

2.  On the Deployments page, select **GGBD DEPLOYMENT**.

3.  On the Deployment Details page, click **Launch Console**.

    ![Deployment GGBD  Details page](images/01-03-ggbd-launchconsole.png " ")

4.  On the OCI GoldenGate Deployment Console sign in page, enter **oggadmin** for User Name and the password you provided when you created the deployment, and then click **Sign In**.

    ![OCI GoldenGate Deployment Console Sign In](images/01-04.png " ")

    You're brought to the OCI GoldenGate Deployment Console Home page after successfully signing in.

5. Click on Replicat name ***kafkaRep*** and Navigate to **Statistics** tab.Verify that **each table** will have ***5*** inserts.

    ![OCI ggbd-statistics](images/ggbd-statistics.png " ")




## Acknowledgements
* **Author** - Madhu Kumar S, Senior Solution Engineer, AppDev and Integration
* **Contributors** -  Deniz Sendil, Database Product Management
* **Last Updated By/Date** - 
