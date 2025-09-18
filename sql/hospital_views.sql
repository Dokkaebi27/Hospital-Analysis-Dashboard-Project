/*
===========================================================
Create Views for Hospital Database
===========================================================
Script Purpose:
- This script creates logical views that join multiple tables
  in the hospital_database for easier reporting and querying.
- The views do not store data, they provide a simplified way 
  to access combined data from multiple tables.
===========================================================
*/

-- ======================================================
-- View Name   : beds_info_en
-- Purpose     : Provides information about the number of beds 
--               grouped by room type, bed status, and room ID.
-- Use Cases    : 
--   - Monitor hospital bed capacity
--   - Analyze bed distribution by room type
--   - Track availability status per room
-- ======================================================

CREATE OR REPLACE VIEW beds_info_en AS
    SELECT 
        COUNT(be.bed_id) AS total_beds,  -- Number of beds in this group
        ro.room_type AS room_type,       -- Type of room (ICU, VIP, General, etc.)
        be.status AS status,             -- Bed status (available, occupied, maintenance)
        ro.room_id AS room_id            -- Room identifier
    FROM beds_en AS be
    LEFT JOIN rooms_en AS ro 
        ON ro.room_id = be.room_id
    GROUP BY 
        ro.room_type,
        be.status,
        ro.room_id;

-- ======================================================
-- View Name   : medical_stock_info_en
-- Purpose     : Provide detailed information about 
--               medical stock with supplier details.
-- Description : Joins medical_stock_en with supplier_en 
--               to include supplier names.
-- ======================================================

CREATE OR REPLACE VIEW medical_stock_info_en AS
  SELECT 
    ms.id AS id,                         -- primary key
    ms.medicine_id AS medicine_id,       -- unique medicine ID
    ms.name AS medicine_name,            -- medicine name
    ms.category AS category,             -- medicine category
    ms.supplier_id AS supplier_id,       -- supplier ID
    sp.name AS supplier_name,            -- supplier name
    ms.cost_price AS cost_price,         -- purchase cost
    ms.unit_price AS unit_price,         -- selling price
    ms.stock_qty AS stock_qty,           -- available stock
    ms.expiry_date AS expiry_date,       -- medicine expiry date
    ms.manufacture_date AS manufacture_date, -- manufacturing date
    ms.batch_number AS batch_number,     -- batch number
    ms.reorder_level AS reorder_level    -- threshold for reordering
FROM medical_stock_en AS ms
LEFT JOIN supplier_en AS sp 
    ON ms.supplier_id = sp.supplier_id;

-- ======================================================
-- View Name   : patient_info_en
-- Purpose     : Provide comprehensive information about patients,
--               including personal details, admission status, 
--               assigned doctor, bed, room, department, 
--               satisfaction feedback, and surgery history.
-- Description : Joins patient_en with related tables 
--               (beds_en, rooms_en, department_en, doktor_en, 
--               satisfaction_score_en, surgery_en, and appointment_en)
--               to present a complete patient profile.
-- ======================================================

CREATE OR REPLACE ALGORITHM=UNDEFINED
SQL SECURITY DEFINER
VIEW `patient_info_en` AS
SELECT 
    -- Patient Information
    pa.patient_id          AS patient_patient_id,          -- primary key
    pa.name                AS patient_name,
    pa.gender              AS patient_gender,
    pa.weight              AS patient_weight,
    pa.age                 AS patient_age,
    pa.blood_group         AS patient_blood_group,
    pa.email               AS patient_email,
    pa.state               AS patient_state,
    pa.phone               AS patient_phone,
    pa.admission_date      AS patient_admission_date,
    pa.discharge_date      AS patient_discharge_date,
    pa.address             AS patient_address,
    pa.Img                 AS patient_img,
    pa.status              AS patient_status,
    CASE 
        WHEN be.bed_id IS NULL THEN 'Discharge'            -- No bed assigned → patient discharged
        ELSE 'Admitted'                                    -- Bed assigned → patient admitted
    END                   AS patient_admission_status,

    -- Doctor Information
    dr.doctor_id           AS doctor_doctor_id,            -- primary key
    dr.name                AS doctor_name,
    dr.Gender              AS doctor_gender,
    dr.salary              AS doctor_salary,
    dr.specialization      AS doctor_specialization,
    dr.department          AS doctor_department,
    dr.availability        AS doctor_availability,
    dr.joining_date        AS doctor_joining_date,
    dr.qualification       AS doctor_qualification,
    dr.experience_years    AS doctor_experience_years,
    dr.email               AS doctor_email,
    dr.phone               AS doctor_phone,
    dr.Img                 AS doctor_img,

    -- Bed Information
    be.bed_id              AS beds_bed_id,                 -- primary key
    be.occupied_from       AS beds_occupied_from,
    be.occupied_till       AS beds_occupied_till,
    be.status              AS beds_status,

    -- Room Information
    ro.room_id             AS room_room_id,                -- primary key
    ro.floor               AS room_floor,
    ro.room_type           AS room_room_type,
    ro.capacity            AS room_capacity,
    ro.daily_charge        AS room_daily_charge,
    ro.avgmontlymaintenancecost AS room_avgmonthlymaintenancecost,
    ro.status              AS room_status,

    -- Department Information
    de.department_id       AS department_department_id,     -- primary key
    de.name                AS department_name,
    de.total_staff         AS department_total_staff,

    -- Satisfaction Feedback
    ss.satisfaction_id     AS satisfaction_satisfaction_id,  -- primary key
    ss.rating              AS satisfaction_rating,
    ss.feedback            AS satisfaction_feedback,

    -- Surgery Information
    su.appointment_id      AS surgery_appointment_id,        -- primary key
    su.appointment_date    AS surgery_appointment_date,
    su.appointment_time    AS surgery_appointment_time,
    su.status              AS surgery_status,
    su.reason              AS surgery_reason,
    su.notes               AS surgery_notes

FROM patient_en pa
    LEFT JOIN satisfaction_score_en ss 
           ON pa.patient_id = ss.patient_id
    LEFT JOIN surgery_en su 
           ON pa.patient_id = su.patient_id
    LEFT JOIN beds_en be 
           ON pa.patient_id = be.patient_id
    LEFT JOIN rooms_en ro 
           ON ro.room_id = be.room_id
    LEFT JOIN department_en de 
           ON de.department_id = ro.department_id
    LEFT JOIN (
        SELECT DISTINCT 
            appointment_en.patient_id AS patient_id,
            appointment_en.doctor_id  AS doctor_id
        FROM appointment_en
    ) ap ON ap.patient_id = pa.patient_id
    LEFT JOIN doktor_en dr 
           ON dr.doctor_id = ap.doctor_id;
