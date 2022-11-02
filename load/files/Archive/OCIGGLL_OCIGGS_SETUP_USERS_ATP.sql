CREATE USER "SRC_OCIGGLL" IDENTIFIED BY "#OCIGGSr0ck5*";

GRANT CREATE SESSION TO "SRC_OCIGGLL";

ALTER USER "SRC_OCIGGLL" ACCOUNT UNLOCK;

GRANT CONNECT, RESOURCE, DWROLE  TO "SRC_OCIGGLL";

GRANT UNLIMITED TABLESPACE TO "SRC_OCIGGLL";

BEGIN
    ORDS.ENABLE_SCHEMA(p_enabled => TRUE,
                       p_schema => 'SRC_OCIGGLL',
                       p_url_mapping_type => 'BASE_PATH',
                       p_url_mapping_pattern => 'SRC_OCIGGLL',
                       p_auto_rest_auth => FALSE);
    commit;
END;
/
exit;
