/*
===========================================================
Create Database: hospital_database
===========================================================

Script Purpose:
This script creates a new database named 'hospital_database' 
after checking if it already exists. If the database exists, 
it will be dropped and recreated. Additionally, the script 
will serve as the foundation to hold hospital management data 
such as patients, doctors, staff, appointments, suppliers, 
and surgeries.

WARNING:
Running this script will DROP the entire 'hospital_database' 
if it exists. All data in the database will be permanently 
deleted. Proceed with caution and ensure you have proper 
backups before running this script.
*/

-- Drop and recreate the 'hospital_database'
DROP DATABASE IF EXISTS hospital_database;

CREATE DATABASE hospital_database
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

-- Switch context to the new database
USE hospital_database;

/*
============================================================
DDL Script: Create Hospital Database Tables
============================================================

Script Purpose:
This script creates all tables in the `hospital_database` schema. 
Drop the tables if they already exist.

Author  : Ahmad Zaki
Date    : 2025-09-18
============================================================
*/

-- =========================================================
-- Table: appointment_en
-- =========================================================

DROP TABLE IF EXISTS hospital_database.appointment_en;

CREATE TABLE hospital_database.appointment_en (
    id                INT NOT NULL AUTO_INCREMENT,
    appointment_id    VARCHAR(255) DEFAULT NULL,
    patient_id        VARCHAR(255) DEFAULT NULL,
    doctor_id         VARCHAR(255) DEFAULT NULL,
    appointment_date  DATE DEFAULT NULL,
    appointment_time  TIME DEFAULT NULL,
    status            VARCHAR(255) DEFAULT NULL,
    reason            VARCHAR(255) DEFAULT NULL,
    notes             VARCHAR(255) DEFAULT NULL,
    suggest           VARCHAR(255) DEFAULT NULL,
    fees              INT DEFAULT NULL,
    payment_method    VARCHAR(255) DEFAULT NULL,
    discount          FLOAT DEFAULT NULL,
    diagnosis         VARCHAR(255) DEFAULT NULL,
    upload_timestamp  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- =========================================================
-- Table: beds_en
-- =========================================================

DROP TABLE IF EXISTS hospital_database.beds_en;

CREATE TABLE hospital_database.beds_en (
    id               INT NOT NULL AUTO_INCREMENT,
    bed_id           VARCHAR(255) DEFAULT NULL,
    room_id          VARCHAR(255) DEFAULT NULL,
    status           VARCHAR(255) DEFAULT NULL,
    patient_id       VARCHAR(255) DEFAULT NULL,
    occupied_from    DATE DEFAULT NULL,
    occupied_till    DATE DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: department_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.department_en;

CREATE TABLE hospital_database.department_en (
    id              INT NOT NULL AUTO_INCREMENT,
    department_id   VARCHAR(255) DEFAULT NULL,
    name            VARCHAR(255) DEFAULT NULL,
    floor           INT DEFAULT NULL,
    head_doctor_id  VARCHAR(255) DEFAULT NULL,
    total_staff     INT DEFAULT NULL,
    phone_extension VARCHAR(255) DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: doktor_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.doktor_en;

CREATE TABLE hospital_database.doktor_en (
    id               INT NOT NULL AUTO_INCREMENT,
    doctor_id        VARCHAR(255) DEFAULT NULL,
    name             VARCHAR(255) DEFAULT NULL,
    gender           VARCHAR(255) DEFAULT NULL,
    specialization   VARCHAR(255) DEFAULT NULL,
    department       VARCHAR(255) DEFAULT NULL,
    salary           INT DEFAULT NULL,
    status           VARCHAR(255) DEFAULT NULL,
    availability     VARCHAR(255) DEFAULT NULL,
    joining_date     DATETIME DEFAULT NULL,
    qualification    VARCHAR(255) DEFAULT NULL,
    experience_years INT DEFAULT NULL,
    phone            VARCHAR(255) DEFAULT NULL,
    email            VARCHAR(255) DEFAULT NULL,
    img              VARCHAR(255) DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: hospital_bills_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.hospital_bills_en;

CREATE TABLE hospital_database.hospital_bills_en (
    id               INT NOT NULL AUTO_INCREMENT,
    bill_id          VARCHAR(255) DEFAULT NULL,
    patient_id       VARCHAR(255) DEFAULT NULL,
    admission_date   DATE DEFAULT NULL,
    discharge_date   DATE DEFAULT NULL,
    room_charges     INT DEFAULT NULL,
    surgery_charges  INT DEFAULT NULL,
    medicine_charges INT DEFAULT NULL,
    test_charges     INT DEFAULT NULL,
    doctor_fees      INT DEFAULT NULL,
    other_charges    INT DEFAULT NULL,
    total_amount     INT DEFAULT NULL,
    discount         VARCHAR(255) DEFAULT NULL,
    paid_amount      INT DEFAULT NULL,
    payment_status   VARCHAR(255) DEFAULT NULL,
    payment_method   VARCHAR(255) DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: medical_stock_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.medical_stock_en;

CREATE TABLE hospital_database.medical_stock_en (
    id               INT NOT NULL AUTO_INCREMENT,
    medicine_id      VARCHAR(255) DEFAULT NULL,
    name             VARCHAR(255) DEFAULT NULL,
    category         VARCHAR(255) DEFAULT NULL,
    supplier_id      VARCHAR(255) DEFAULT NULL,
    cost_price       INT DEFAULT NULL,
    unit_price       INT DEFAULT NULL,
    stock_qty        INT DEFAULT NULL,
    expiry_date      DATE DEFAULT NULL,
    manufacture_date DATE DEFAULT NULL,
    batch_number     VARCHAR(255) DEFAULT NULL,
    reorder_level    INT DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: medical_tests_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.medical_tests_en;

CREATE TABLE hospital_database.medical_tests_en (
    id               INT NOT NULL AUTO_INCREMENT,
    test_id          VARCHAR(255) DEFAULT NULL,
    test_name        VARCHAR(255) DEFAULT NULL,
    category         VARCHAR(255) DEFAULT NULL,
    department_id    VARCHAR(255) DEFAULT NULL,
    cost             INT DEFAULT NULL,
    duration_minutes INT DEFAULT NULL,
    fasting_required VARCHAR(255) DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: medicine_patient_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.medicine_patient_sheet1;

CREATE TABLE hospital_database.medicine_patient_sheet1 (
    id               INT NOT NULL AUTO_INCREMENT,
    patient_id       VARCHAR(255) DEFAULT NULL,
    medicine_id      VARCHAR(255) DEFAULT NULL,
    qty              INT DEFAULT NULL,
    date             DATE DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: patient_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.patient_en;

CREATE TABLE hospital_database.patient_en (
    id               INT NOT NULL AUTO_INCREMENT,
    patient_id       VARCHAR(255) DEFAULT NULL,
    name             VARCHAR(255) DEFAULT NULL,
    age              INT DEFAULT NULL,
    gender           VARCHAR(255) DEFAULT NULL,
    weight           INT DEFAULT NULL,
    blood_group      VARCHAR(255) DEFAULT NULL,
    address          VARCHAR(255) DEFAULT NULL,
    state            VARCHAR(255) DEFAULT NULL,
    phone            VARCHAR(255) DEFAULT NULL,
    email            VARCHAR(255) DEFAULT NULL,
    admission_date   DATET DEFAULT NULL,
    discharge_date   DATE DEFAULT NULL,
    status           VARCHAR(255) DEFAULT NULL,
    img              VARCHAR(255) DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: patient_tests_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.patient_tests_en;

CREATE TABLE hospital_database.patient_tests_en (
    id               INT NOT NULL AUTO_INCREMENT,
    patient_test_id  VARCHAR(255) DEFAULT NULL,
    patient_id       VARCHAR(255) DEFAULT NULL,
    test_id          VARCHAR(255) DEFAULT NULL,
    doctor_id        VARCHAR(255) DEFAULT NULL,
    test_date        DATETIME DEFAULT NULL,
    result_date      DATETIME DEFAULT NULL,
    status           VARCHAR(255) DEFAULT NULL,
    result           VARCHAR(255) DEFAULT NULL,
    notes            VARCHAR(255) DEFAULT NULL,
    amount           INT DEFAULT NULL,
    payment_method   VARCHAR(255) DEFAULT NULL,
    discount         FLOAT DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: rooms_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.rooms_en;

CREATE TABLE hospital_database.rooms_en (
    id                        INT NOT NULL AUTO_INCREMENT,
    room_id                   VARCHAR(255) DEFAULT NULL,
    department_id             VARCHAR(255) DEFAULT NULL,
    room_type                 VARCHAR(255) DEFAULT NULL,
    floor                     INT DEFAULT NULL,
    capacity                  INT DEFAULT NULL,
    status                    VARCHAR(255) DEFAULT NULL,
    daily_charge              INT DEFAULT NULL,
    avg_monthly_maintenance_cost INT DEFAULT NULL,
    upload_timestamp          TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: satisfaction_score_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.satisfaction_score_en;

CREATE TABLE hospital_database.satisfaction_score_en (
    id               INT NOT NULL AUTO_INCREMENT,
    satisfaction_id  VARCHAR(255) DEFAULT NULL,
    patient_id       VARCHAR(255) DEFAULT NULL,
    doctor_id        VARCHAR(255) DEFAULT NULL,
    rating           INT DEFAULT NULL,
    feedback         VARCHAR(255) DEFAULT NULL,
    date             INT DEFAULT NULL,
    department       VARCHAR(255) DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: staff_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.staff_en;

CREATE TABLE hospital_database.staff_en (
    id               INT NOT NULL AUTO_INCREMENT,
    staff_id         VARCHAR(255) DEFAULT NULL,
    name             VARCHAR(255) DEFAULT NULL,
    department_id    VARCHAR(255) DEFAULT NULL,
    role             VARCHAR(255) DEFAULT NULL,
    salary           INT DEFAULT NULL,   
    joining_date     DATETIME DEFAULT NULL,
    shift            VARCHAR(255) DEFAULT NULL,
    phone            VARCHAR(255) DEFAULT NULL,
    email            VARCHAR(255) DEFAULT NULL,
    address          VARCHAR(255) DEFAULT NULL,
    upload_timestamp TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ============================================================
-- Table: supplier_en
-- ============================================================

DROP TABLE IF EXISTS hospital_database.supplier_en;

CREATE TABLE hospital_database.supplier_en (
    id                  INT NOT NULL AUTO_INCREMENT,
    supplier_id         VARCHAR(255) DEFAULT NULL,
    name                VARCHAR(255) DEFAULT NULL,
    contact_person      VARCHAR(255) DEFAULT NULL,
    phone               VARCHAR(50)  DEFAULT NULL,
    email               VARCHAR(255) DEFAULT NULL,
    address             VARCHAR(255) DEFAULT NULL,
    city                VARCHAR(100) DEFAULT NULL,
    state               VARCHAR(100) DEFAULT NULL,
    pincode             VARCHAR(20)  DEFAULT NULL,
    contract_start_date DATET DEFAULT NULL,
    contract_end_date   DATE DEFAULT NULL,
    upload_timestamp    TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ================================
-- Table: surgery_en
-- ================================

DROP TABLE IF EXISTS hospital_database.surgery_en;

CREATE TABLE hospital_database.surgery_en (
  id                INT NOT NULL AUTO_INCREMENT,
  appointment_id    VARCHAR(255) DEFAULT NULL,
  patient_id        VARCHAR(255) DEFAULT NULL,
  doctor_id         VARCHAR(255) DEFAULT NULL,
  appointment_date  DATETIME DEFAULT NULL,
  appointment_time  TIME DEFAULT NULL,
  status            VARCHAR(255) DEFAULT NULL,
  reason            VARCHAR(255) DEFAULT NULL,
  notes             VARCHAR(255) DEFAULT NULL,
  instruction       VARCHAR(255) DEFAULT NULL,
  fees              INT DEFAULT NULL,
  payment_method    VARCHAR(255) DEFAULT NULL,
  discount          FLOAT DEFAULT NULL,
  upload_timestamp  TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

