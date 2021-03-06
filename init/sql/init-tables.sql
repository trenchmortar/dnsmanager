USE dnsmanager;

CREATE TABLE IF NOT EXISTS user (
    login varchar(50) NOT NULL,
    passwd varchar(100) DEFAULT NULL,
    admin tinyint(1) DEFAULT 0,
    PRIMARY KEY (login)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS domain (
    domain varchar(100) NOT NULL,
    login varchar(50) NOT NULL,
    activated tinyint(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (domain)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS tld (
    tld varchar(50) NOT NULL,
    activated tinyint(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (tld)
) ENGINE=InnoDB;
