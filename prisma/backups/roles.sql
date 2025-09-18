
\restrict 1C46F4j6xywhsVdSNz5GYDtIFGQqB1mwlKsBEqX1XD820Ng4XOYqGMMvHyPA03m

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

CREATE ROLE "cli_login_postgres";
ALTER ROLE "cli_login_postgres" WITH NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOBYPASSRLS VALID UNTIL '2025-09-17 15:31:42.854458+00';

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

GRANT "postgres" TO "cli_login_postgres";

\unrestrict 1C46F4j6xywhsVdSNz5GYDtIFGQqB1mwlKsBEqX1XD820Ng4XOYqGMMvHyPA03m

RESET ALL;
