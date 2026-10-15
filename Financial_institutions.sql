------------------------------------------
---------FINANCIAL INSTITUTION------------
------------------------------------------
CREATE TABLE financial_institution (
    institution_id    NUMBER(10) NOT NULL,
    institution_code  VARCHAR2(20) NOT NULL,
    institution_name  VARCHAR2(100) NOT NULL,
    institution_type  VARCHAR2(30) NOT NULL,
    status            VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,
    created_at        TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT pk_financial_institution
        PRIMARY KEY (institution_id),

    CONSTRAINT uq_fi_code
        UNIQUE (institution_code),

    CONSTRAINT ck_fi_type
        CHECK (institution_type IN (
            'BANK',
            'MOBILE_MONEY',
            'PAYMENT_OPERATOR',
            'FINTECH'
        )),

    CONSTRAINT ck_fi_status
        CHECK (status IN ('ACTIVE', 'INACTIVE'))
);
INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (1000, 'CBE', 'Commercial Bank of Ethiopia', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (211, 'ABY', 'Bank of Abyssinia', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (300, 'DASHEN', 'Dashen Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (400, 'AWASH', 'Awash Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (500, 'NIB', 'Nib International Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (600, 'HIBRET', 'Hibret Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (700, 'WEGAGEN', 'Wegagen Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (800, 'ZEMEN', 'Zemen Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (900, 'COOP', 'Cooperative Bank of Oromia', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (1001, 'OROMIA', 'Oromia Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (1002, 'BERHAN', 'Berhan Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (1003, 'ABAY', 'Abay Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (1004, 'BUNNA', 'Bunna Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (1005, 'ADDIS_INT', 'Addis International Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (1006, 'ENAT', 'Enat Bank', 'BANK');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (9, 'TELEBIRR', 'Telebirr', 'MOBILE_MONEY');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (7, 'MPESA', 'M-PESA', 'MOBILE_MONEY');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (10, 'KACHA', 'Kacha Digital Financial Services', 'MOBILE_MONEY');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (20, 'ETHSWITCH', 'EthSwitch', 'PAYMENT_OPERATOR');

INSERT INTO financial_institution
    (institution_id, institution_code, institution_name, institution_type)
VALUES
    (30, 'CHAPA', 'Chapa Financial Technology', 'FINTECH');
    
COMMIT;