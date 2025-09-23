
\restrict wPutX3VIV5hxZH4jqr96CNIypEu25YmP9QjtQkLEENGeSrVnfqryeVqQzwFGePX

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

CREATE ROLE "cli_login_postgres";
ALTER ROLE "cli_login_postgres" WITH NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOBYPASSRLS VALID UNTIL '2025-09-17 15:31:42.854458+00';

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

GRANT "postgres" TO "cli_login_postgres";

\unrestrict wPutX3VIV5hxZH4jqr96CNIypEu25YmP9QjtQkLEENGeSrVnfqryeVqQzwFGePX

RESET ALL;
