--------------------------------------------------------
--  File created - @dsgray 3-07-2021   
--------------------------------------------------------
--------------------------------------------------------
---Target Schema 


CREATE USER "SRCMIRROR_OCIGGLL" IDENTIFIED BY "#OCIGGSr0ck5*";

GRANT CREATE SESSION TO "SRCMIRROR_OCIGGLL";

ALTER USER "SRCMIRROR_OCIGGLL" ACCOUNT UNLOCK;

GRANT CONNECT, RESOURCE, DWROLE TO  "SRCMIRROR_OCIGGLL";

GRANT UNLIMITED TABLESPACE TO "SRCMIRROR_OCIGGLL";

BEGIN
    ORDS.ENABLE_SCHEMA(p_enabled => TRUE,
                       p_schema => 'SRCMIRROR_OCIGGLL',
                       p_url_mapping_type => 'BASE_PATH',
                       p_url_mapping_pattern => 'SRCMIRROR_OCIGGLL',
                       p_auto_rest_auth => FALSE);
    commit;
END;
/
exit;