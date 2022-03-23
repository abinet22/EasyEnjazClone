-- Create trainees table
--  $cat trainees.sql | mysql -u nahi -p
-- $mysql -u nahi -p selamets < ../trainees.sql
--  add middle name 
-- Create table for outcome
-- DROP TABLE table1;
-- the admin shoudl create the agency table, applicant table and agency profile table
-- agency = name_to_be_created

CREATE DATABASE IF NOT EXISTS afroguzo;
USE afroguzo;

CREATE TABLE IF NOT EXISTS Agency (
    agency_id VARCHAR(256) not NULL,	
    agency_name VARCHAR(256) NULL,	
    user_name VARCHAR(256) NULL,
    phone VARCHAR(256) NULL,
    email VARCHAR(256) NULL,
    subscription_type VARCHAR(256) NULL,
    is_active VARCHAR(256) NULL,
    password VARCHAR(256) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now(),
    PRIMARY KEY (agency_id)
);


CREATE TABLE IF NOT EXISTS Applicantion (
    applicantion_id VARCHAR(256) not NULL,
    applicantion_no VARCHAR(256) DEFAULT NULL,
    agency_id VARCHAR(256) NOT NULL, 	
    f_name VARCHAR(256) NULL,
    f_name_am VARCHAR(256) NULL,	
    m_name VARCHAR(256) NULL,
    m_name_am VARCHAR(256) NULL,
    l_name VARCHAR(256) NULL,
    l_name_am VARCHAR(256) NULL,
    passport_no VARCHAR(256) NULL,
    issue_country VARCHAR(256) NULL,
    issue_date date NULL,
    date_of_birth date NULL,
    passport_type VARCHAR(256) NULL,
    place_of_birth VARCHAR(256) NULL,
    date_of_expiry VARCHAR(256) NULL,
    phone_no VARCHAR(256) NULL,
    current_nationality VARCHAR(256) NULL,
    religion VARCHAR(256) NULL,
    geneder VARCHAR(256) NULL,
    qulification VARCHAR(256) NULL,
    year_completed VARCHAR(256) NULL,
    city VARCHAR(256) NULL,
    wereda VARCHAR(256) NULL,
    other_nationality VARCHAR(256) NULL,
    marital_status VARCHAR(256) NULL,
    occupation VARCHAR(256) NULL,
    home_address VARCHAR(256) NULL,
    house_no VARCHAR(256) NULL,
    subcity_zone VARCHAR(256) NULL,
    region VARCHAR(256) NULL,
    shelf_number VARCHAR(256) NULL,
    contact_number VARCHAR(256) NULL,
    visa_number VARCHAR(256) NULL,
    visa_type VARCHAR(256) NULL,
    signed_on VARCHAR(256) NULL,
    salary VARCHAR(256) NULL,
    port_of_entry VARCHAR(256) NULL,
    remark VARCHAR(256) NULL,
    sponsorID VARCHAR(256) NULL,
    sponsor_address VARCHAR(256) NULL,
    sponsor_phone VARCHAR(256) NULL,
    email VARCHAR(256) NULL,
    sponsor_name VARCHAR(256) NULL,
    sponsor_arabic VARCHAR(256) NULL,
    office_abroad VARCHAR(256) NULL,
    relative_name VARCHAR(256) NULL,
    relative_phone VARCHAR(256) NULL,
    relative_city VARCHAR(256) NULL,
    relative_gender VARCHAR(256) NULL,
    address_region VARCHAR(256) NULL,
    relative_kinship VARCHAR(256) NULL,
    relative_subcity VARCHAR(256) NULL,
    relative_house_no VARCHAR(256) NULL,
    relative_birth_date VARCHAR(256) NULL,
    medical_place VARCHAR(256) NULL,
    medical_date date NULL,
    insurance_no VARCHAR(256) NULL,
    forensic VARCHAR(256) NULL,
    two_photographs VARCHAR(256) NULL,
    id_card VARCHAR(256) NULL,
    relative_id_card VARCHAR(256) NULL,
    pre_daparture_card VARCHAR(256) NULL,
    eighth_grade_or_above VARCHAR(256) NULL,
    en_language VARCHAR(256) NULL,
    arabic_language VARCHAR(256) NULL,
    local_work_experiance VARCHAR(256) NULL,
    abroad_work_experiance VARCHAR(256) NULL,
    works_in VARCHAR(256) NULL,
    number_of_children VARCHAR(256) NULL,
    height VARCHAR(256) NULL,
    weight VARCHAR(256) NULL,
    ironing VARCHAR(256) NULL,
    coocking VARCHAR(256) NULL,
    serving VARCHAR(256) NULL,
    baby_sitting VARCHAR(256) NULL,
    child_care VARCHAR(256) NULL,
    arabic_cooking VARCHAR(256) NULL,
    cleaning VARCHAR(256) NULL,
    washing VARCHAR(256) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now(),
    PRIMARY KEY (applicantion_id),
    FOREIGN KEY (agency_id)
);


CREATE TABLE IF NOT EXISTS Agency_profile (
    profile_id VARCHAR(256) not NULL,
    agency_id VARCHAR(256) not NULL,	
    agency_name VARCHAR(256) NULL,
    trade_registration_renewal VARCHAR(256) NULL,
    tin VARCHAR(256) NULL,
    manager VARCHAR(256) NULL,
    manager_phone_number VARCHAR(256) NULL,
    manager_email VARCHAR(256) NULL,
    office_address VARCHAR(256) NULL,
    office_phone_no VARCHAR(256) NULL,
    company_email VARCHAR(256) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now(),
    PRIMARY KEY (profile_id),
    FOREIGN KEY (agency_id) REFERENCES agency(agency_id)
);
