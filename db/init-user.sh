#!/bin/bash

cat <<'EOF' | mysql --host=127.0.0.1 -uroot -P3400
CREATE USER 'isucon'@'%' IDENTIFIED BY 'isucon';
GRANT ALL ON torb.* TO 'isucon'@'%';
CREATE USER 'isucon'@'localhost' IDENTIFIED BY 'isucon';
GRANT ALL ON torb.* TO 'isucon'@'localhost';
EOF
