# Create the ATP and Kafka Connection

## Introduction

This lab walks you through the steps to create a connection to ***ATP*** and ***Kafka*** from an Oracle Cloud Infrastructure (OCI) GoldenGate deployment.

Estimated time: 5 minutes

### About Creating the ATP and Kafka Connection

You can create and save the database login credentials, Kafka connectivity, and assign the global credentials to appropriate deployments.

### Objectives

In this lab, you will:
* Locate Oracle Cloud Infrastructure GoldenGate in the Console
* Create a connection to ATP and Kafka from OCI GOldenGate deployment


### Prerequisites

This lab assumes that you completed all preceding labs.

## Task 1: Create a connection to ATP

First, follow the steps below to create a connection to the source Oracle Autonomous Transaction Processing \(ATP\) Database and target Apache Kafka.

1.  Open the **Navigation Menu**, navigate to **Oracle Database**, and select **GoldenGate**.

    ![GoldenGate in Oracle Cloud navigation menu](images/database-goldengate.png " ")

2.  On the GoldenGate **Connections** page, click **Create connection**.

    ![GoldenGate create-connection page](images/connection-select.PNG " ")

3.  In the Create connection panel, enter **ATP_Source** for Name.

4.  From the Compartment dropdown menu, select a compartment (in this lab,we choose compartment as **LiveLabCompartment**).

5.  Select Type as **OCI Autonomous Database** and click Next.
    ![GoldenGate create connection creation page](images/oci-connection-choose.png " ")

6.  On the Create connection **Connection details** page, choose the radio button **Select Database** to select the **ATP Database** that was created in **Lab 1**. Provide Database username as ***ggadmin***, password as ***Or4cl3--2022*** and click Create.
    ![atp database connection created](images/create-atp-connection.png " ")



## Task 2: Create a connection to Apache Kafka

Follow the steps below to create a connection to the target  Apache Kafka.

1.  Open the **Navigation Menu**, navigate to **Oracle Database**, and select **GoldenGate**.

    ![GoldenGate in Oracle Cloud navigation menu](images/database-goldengate.png " ")

2.  On the GoldenGate **Connections** page, click **Create connection**.

    ![GoldenGate create-connection page](images/connection-select.PNG " ")

3.  In the Create connection panel, enter **kafka** for Name.

4.  From the Compartment dropdown menu, select a compartment (in this lab, we choose compartment as **LiveLabCompartment**).

5.  Select Type as **Apache Kafka** and click Next.
    ![Connection type selected as Apache Kafka](images/kafka-connection-choose.png " ")

6.  On the Create connection **Connection details** page, provide the public IP of Bootstrap servers of Kafka OCI Instance that was configured in Lab 1 for **Host**. Port as **9092**. Select Security Protocol as **Plaintext** and click Create.
    ![public IP of bootstrap server](images/bootstrap-server-details.png " ")

## Task 3: Assign Connections to Deployments
1. Go to Connections and click on **ATP_Connection** which was created in ***Task 1***. Click ***Assign Deployment***.

    ![assign-deployment-oracle](images/assign-deployment-oracle.PNG " ")
2. Select OCI GoldenGate deployment as ***GGSDeployment*** and click **Assign Deployment**.

    ![deployment-oracle-select](images/deployment-oracle-select.png " ")

3.	Go back to **Connections** and click on **Kafka Connection** that was created in **Task 2**.

    ![Kafka-connection](images/assign-kafka-connection.png " ")
4.	Select OCI GoldenGate for Big Data deployment as ***OCI GoldenGate Big Data*** and click Assign Deployment.
    ![assign-kafka-connection](images/kafka-connection.png " ")
In this lab, you created a connection to source ATP and target Apache Kafka.

## Learn More

* [Manage Deployment users](https://docs.oracle.com/en/cloud/paas/goldengate-service/using/manage-user-accounts.html#GUID-56E2E146-7713-4094-8BEC-7C138064EB21)

## Acknowledgements
* **Author** - Madhu Kumar S, Senior Solution Engineer, AppDev and Integration 
* **Contributors** -  Deniz Sendil, Database Product Management
* **Last Updated By/Date** - 
