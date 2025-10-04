🌐 Languages: [English](#english-version) | [Bahasa Indonesia](#indonesian-version)
---

<a name="english-version"></a>
# 🏥 Hospital Analytics Dashboard 

Welcome to the **Hospital Analysis Project** repository 🚀 

This repository showcases a hospital data analysis project using MySQL for database management and Power BI for interactive visualization. The dashboard provides insights into patient profiles, doctor, information about hospital, and finance.

**Project Type**: End-to-End Data Analytics & Business Intelligence. 

**Tool Used**: Microsoft Power BI, MySQL and Excel.

---
## 🔍 Project Overview

This project demonstrates a complete BI workflow:
1. **Data Source (Excel)** → Raw hospital dataset stored in Excel format.
2. **Database (MySQL)** → Data imported, cleaned, and structured into relational tables.
3. **SQL Queries** → Aggregation and KPI calculations using SQL.
4. **Dashboard (Power BI)** → Interactive reports and visual insights.

---
## 📌 Problem Statement
Currently, hospital data is scattered across multiple departments (patients, doctors, appointment, bill, etc), making it difficult for management to quickly obtain comprehensive insights.

From the screens, the key problems solved are:

- **No clear KPI monitoring** → Dashboard provides quick summaries such as total patients, doctors, staff, costs, and medicine status.
- **Hard to monitor patient & doctor information** → Patient details (status, diagnosis, medication, cost) and doctor details (schedule, commission, specialization) are consolidated in one view.
- **Difficulty in tracking medicine distribution & supply** → Visualization of stock levels, medicine sales, and supplier data helps monitor availability and demand.
- **Lack of visibility into trends** → Trends such as medicine purchases, patient admissions/discharges, and monthly expenses are clearly visualized.
- **Disconnected information across departments** → Dashboard integrates patient, doctor, finance, and hospital status data for a more holistic insight.
- **Decision-making gaps** → Management can now identify cost burdens, supply needs, doctor performance, and patient trends to support both operational and strategic decisions.

---
## 🎯 Business Requirement

Hospital stakeholders (management, doctors, finance teams, and health administrators) need a **consolidated dashboard** to monitor patient, doctor, finance, and operational performance across different dimensions.

Based on the screens provided, the business requires:

---

🏠 **Overview Page**

* Track KPIs like **Total Patients, Total Doctors, Total Staff, Total Revenue.**
* Monitor **Bed Status** (occupied vs available).
* Monitor **Stock Status** (medicine stock left vs sold).
* Show **Patient Admission & Discharge Trends by Month.**
* Highlight **Recent Feedback/Reviews from Patients.**
* Provide summary of **Surgeries and Appointments.**

---

👤 **Patient’s Page**

* Display **Patient Demographics** (age, gender, address, weight, blood type).
* Show **Assigned Doctor, Diagnosis, Room Type, Bed ID.**
* Track **Medicine Purchases by Month and Day.**
* Summarize **Charges** (surgery, room, tests, doctor, other, discounts).
* Show **Medicine Bought** per patient with quantity breakdown.
* Provide **Admission Date, Discharge Date, and Paid Amount.**

---

👨‍⚕️ **Doctor’s Page**

* Display **Doctor Profile** (qualification, specialization, department).
* Monitor **Doctor Availability Status.**
* Track **Appointments with Patients.**
* Show **Commission Metrics**: commission rate, estimated commission, paid amount.
* Provide drill-down table of **Doctor’s Patients with Diagnosis and Status.**
* Identify doctors with **highest patient count and revenue contribution.**

---

💰 **Finance Page**

* Track **Hospital Financial KPIs**: total revenue, doctor salary, staff salary, average spent.
* Show **Charges by Type** (surgery, room, tests, etc.).
* Monitor **Payment Methods** (insurance, credit card, cash).
* Show **Monthly Medicine Sales Trend.**
* Analyze **Medicine Status** (in stock vs sold).
* Provide **Supplier Performance** with medicine supplied vs sold.

---

🏥 **Information Page**

* Track **Patient by Age Category.**
* Show **Patient Test Status** (test results, notes, status).
* Monitor **Bed Availability per Type** (general, ICU, private).
* Track **Doctor’s Appointments by Patient & Reason.**
* Summarize **Scheduled Surgeries.**

---

👉 With this structure, hospital stakeholders can:

* Monitor patient, doctor, financial, and hospital operations performance comprehensively.
* Make data-driven decisions on hospital capacity, medicine needs, costs, and doctor performance.
* Ensure service availability and improve hospital management efficiency.

---
## 📌 Key Insights

✔ Patients: The largest bill was for patient **Joko Nugroho** with a cost of around Rp. 122 Juta.

✔ Finance: Total paid amount **Rp 719 Juta**, with major revenue from surgery charges.

✔ Doctors: Highest commission rate 10% achieved by **Dr. Rama Wijaya.**

✔ Medicines: Top-selling items include **Ranitidine, Diazepam, and Salbutamol.**

---
## 📂 Repository Structure
``` 
hospital-analysis-project/  
│  
├── datasets/                              # Raw and datasets for this project               
│  
├── sql/                                   # MySQL scripts  
│   ├── hospital_ddl.sql                   # Database schema (CREATE TABLE)  
│   └── hospital_views.sql                 # SQL queries for analysis (KPI, aggregation)  
│  
├── powerbi/                               # Power BI dashboard file  
│   └── Hospital_Analysis.pbix              
│  
├── docs/                                  # Documentation & reports  
│   └── Hospital_Analysis.pdf               
│  
└── README.md                              # Project description and portfolio details
``` 

---
## 🛠️ Tools & Skills Demonstrated

**Excel**: 
- Data entry, cleaning, and preprocessing. 

**MySQL**:
- Database design (tables for patients, doctors, medicines, finance) with JOIN, and GROUP BY.

**Power BI**:
- Dashboard design, DAX calculations, and interactive visuals.
- Visual storytelling and business intelligence reporting.
  
**Data Analysis & BI**:
- Healthcare data analytics (patient outcomes, medicine usage, finance).
- Turning raw transactional data into meaningful business insights.

---
## 📊 Power BI File Access

The Power BI dashboard file (`Hospital_Analysis.pbix`) is stored using **Git LFS (Large File Storage)**.  For convenience, a direct **Google Drive link** is also provided.

🔹 Option 1 – Download via Git LFS
1. Install Git LFS → [Download here](https://git-lfs.github.com)  
2. Clone this repository:
   ```bash
   git clone https://github.com/Dokkaebi27/Hospital-Analysis-Dashboard.git
3. Git LFS will automatically fetch the .pbix file into the PowerBI/ folder. 

🔹 Option 2 – Download via Google Drive link

👉 [Download Hospital_Analysis.pbix from Google Drive](https://drive.google.com/file/d/1uED4r9KjuLMJGw45AIEFYMSycc206wUP/view?usp=drive_link)

---
## 🙍 About Me  

Hi, I'm **Ahmad Zaki Amani** 👋  

✨ I'm passionate about **Data Analytics** and **Business Intelligence**, focusing on building dashboards, creating data visualizations, and turning raw data into actionable insights.  

💡 This project is part of my portfolio, where I showcase skills in:  
- Data visualization & storytelling  
- Dashboard design (Power BI, Tableau)  
- Data transformation & analysis  
- Business Intelligence solutions

📫 Let’s connect and collaborate!  

[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:ahmadzaki27.az@gmail.com) 
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmad-zaki-amani-ab091635b/)  

---
🌐 Languages: [English](#english-version) | [Bahasa Indonesia](#indonesian-version)

---
<a name="indonesian-version"></a>
# 🏥 Dasbor Analisis Rumah Sakit 

Selamat datang di repositori **Proyek Analisis Rumah Sakit** 🚀

Repositori ini menampilkan proyek analisis data rumah sakit menggunakan MySQL untuk manajemen database dan Power BI untuk visualisasi interaktif. Dashboard memberikan wawasan tentang profil pasien, dokter, informasi rumah sakit, dan keuangan.

**Jenis Proyek**: End-to-End Data Analytics & Business Intelligence.

**Alat yang Digunakan**: Microsoft Power BI, MySQL, dan Excel.

---

## 🔍 Gambaran Proyek

Proyek ini menunjukkan alur kerja BI yang lengkap:

1. **Sumber Data (Excel)** → Dataset rumah sakit mentah dalam format Excel.
2. **Database (MySQL)** → Data diimpor, dibersihkan, dan disusun ke dalam tabel relasional.
3. **SQL Queries** → Agregasi dan perhitungan KPI menggunakan SQL.
4. **Dashboard (Power BI)** → Laporan interaktif dan wawasan visual.

---

## 📌 Permasalahan

Saat ini, data rumah sakit tersebar di berbagai departemen (pasien, dokter, janji temu, tagihan, dll) sehingga menyulitkan manajemen untuk mendapatkan insight yang komprehensif secara cepat.

Berdasarkan tampilan dashboard, masalah utama yang diselesaikan adalah:

* **Tidak ada pemantauan KPI yang jelas** → Dashboard menyediakan ringkasan cepat seperti total pasien, dokter, staf, biaya, dan status obat.
* **Sulit memantau informasi pasien & dokter** → Detail pasien (status, diagnosis, obat, biaya) dan detail dokter (jadwal, komisi, spesialisasi) dikonsolidasikan dalam satu tampilan.
* **Sulit melacak distribusi & pasokan obat** → Visualisasi stok, penjualan obat, dan data supplier membantu memantau ketersediaan dan permintaan.
* **Kurangnya visibilitas tren** → Tren pembelian obat, pasien masuk/keluar, dan biaya bulanan divisualisasikan dengan jelas.
* **Informasi terpisah antar departemen** → Dashboard mengintegrasikan data pasien, dokter, keuangan, dan status rumah sakit untuk insight yang lebih menyeluruh.
* **Kesenjangan dalam pengambilan keputusan** → Manajemen dapat mengidentifikasi beban biaya, kebutuhan obat, performa dokter, dan tren pasien untuk mendukung keputusan operasional maupun strategis.

---

## 🎯 Kebutuhan Bisnis

Pemangku kepentingan rumah sakit (manajemen, dokter, tim keuangan, dan administrator kesehatan) membutuhkan **dashboard terintegrasi** untuk memantau kinerja pasien, dokter, keuangan, dan operasional dari berbagai dimensi.

Berdasarkan layar yang tersedia, kebutuhan bisnis adalah:

---

🏠 **Halaman Overview**

* Memantau KPI seperti **Total Pasien, Total Dokter, Total Staf, Total Pendapatan.**
* Memantau **Status Tempat Tidur** (terisi vs tersedia).
* Memantau **Status Stok Obat** (tersisa vs terjual).
* Menampilkan **Tren Pasien Masuk & Keluar per Bulan.**
* Menyoroti **Umpan Balik/Review Pasien Terbaru.**
* Memberikan ringkasan **Operasi dan Janji Temu.**

---

👤 **Halaman Pasien**

* Menampilkan **Demografi Pasien** (usia, jenis kelamin, alamat, berat badan, golongan darah).
* Menampilkan **Dokter Penanggung Jawab, Diagnosis, Jenis Kamar, Bed ID.**
* Memantau **Pembelian Obat per Bulan dan Hari.**
* Merangkum **Biaya** (operasi, kamar, tes, dokter, lainnya, diskon).
* Menampilkan **Obat yang Dibeli** per pasien dengan rincian jumlah.
* Memberikan informasi **Tanggal Masuk, Tanggal Keluar, dan Jumlah Pembayaran.**

---

👨‍⚕️ **Halaman Dokter**

* Menampilkan **Profil Dokter** (kualifikasi, spesialisasi, departemen).
* Memantau **Status Ketersediaan Dokter.**
* Memantau **Janji Temu dengan Pasien.**
* Menampilkan **Metrik Komisi**: tarif komisi, estimasi komisi, jumlah pembayaran.
* Menyediakan tabel detail **Pasien Dokter dengan Diagnosis dan Status.**
* Mengidentifikasi dokter dengan **jumlah pasien terbanyak dan kontribusi pendapatan tertinggi.**

---

💰 **Halaman Keuangan**

* Memantau **KPI Keuangan Rumah Sakit**: total pendapatan, gaji dokter, gaji staf, rata-rata pengeluaran.
* Menampilkan **Biaya berdasarkan Jenis** (operasi, kamar, tes, dll).
* Memantau **Metode Pembayaran** (asuransi, kartu kredit, tunai).
* Menampilkan **Tren Penjualan Obat Bulanan.**
* Menganalisis **Status Obat** (tersisa vs terjual).
* Menyediakan **Performa Supplier** dengan jumlah obat yang disuplai vs terjual.

---

🏥 **Halaman Informasi**

* Memantau **Pasien berdasarkan Kategori Usia.**
* Menampilkan **Status Tes Pasien** (hasil tes, catatan, status).
* Memantau **Ketersediaan Tempat Tidur per Jenis** (umum, ICU, privat).
* Memantau **Janji Temu Dokter berdasarkan Pasien & Alasan.**
* Menyediakan ringkasan **Operasi yang Terjadwal.**

---

👉 Dengan struktur ini, pemangku kepentingan rumah sakit dapat:

* Memantau kinerja pasien, dokter, keuangan, dan operasional rumah sakit secara menyeluruh.
* Mengambil keputusan berbasis data terkait kapasitas rumah sakit, kebutuhan obat, biaya, serta performa dokter.
* Menjamin ketersediaan layanan kesehatan dan meningkatkan efisiensi manajemen rumah sakit.

---

## 📌 Insight Utama

✔ Pasien: Tagihan terbesar adalah untuk pasien **Joko Nugroho** dengan biaya sekitar Rp. 122 Juta.

✔ Keuangan: Total pembayaran **Rp 719 Juta**, dengan pendapatan utama berasal dari biaya operasi.

✔ Dokter: Tarif komisi tertinggi 10% diperoleh oleh **Dr. Rama Wijaya.**

✔ Obat: Obat dengan penjualan terbanyak adalah **Ranitidine, Diazepam, dan Salbutamol.**

---

## 📂 Struktur Repositori

```
hospital-analysis-project/  
│  
├── datasets/                              # Dataset mentah & olahan untuk proyek ini              
│  
├── sql/                                   # Script MySQL  
│   ├── hospital_ddl.sql                   # Skema database (CREATE TABLE)  
│   └── hospital_views.sql                 # Query SQL untuk analisis (KPI, agregasi)  
│  
├── powerbi/                               # File dashboard Power BI  
│   └── Hospital_Analysis.pbix             # Dashboard interaktif (Power BI)  
│  
├── docs/                                  # Dokumentasi & laporan  
│   └── Hospital_Analysis.pdf              # Dokumentasi dashboard (ekspor PDF)  
│  
└── README.md                              # Deskripsi proyek dan detail portofolio
```

---

## 🛠️ Tools & Skill yang Digunakan

**Excel**:

* Input data, pembersihan, dan preprocessing.

**MySQL**:

* Desain database (tabel pasien, dokter, obat, keuangan) dengan JOIN dan GROUP BY.

**Power BI**:

* Desain dashboard, perhitungan DAX, dan visualisasi interaktif.
* Visual storytelling dan laporan Business Intelligence.

**Data Analysis & BI**:

* Analisis data kesehatan (hasil pasien, penggunaan obat, keuangan).
* Mengubah data mentah menjadi insight bisnis yang bermanfaat.

---

## 📊 Akses File Power BI

File dashboard Power BI (`Hospital_Analysis.pbix`) disimpan menggunakan **Git LFS (Large File Storage)**. Untuk kenyamanan, juga tersedia **tautan Google Drive langsung**.

🔹 Opsi 1 – Download via Git LFS

1. Install Git LFS → [Unduh di sini](https://git-lfs.github.com)
2. Clone repositori ini:

   ```bash
   git clone https://github.com/Dokkaebi27/Hospital-Analysis-Dashboard.git
   ```
3. Git LFS akan otomatis mengambil file .pbix ke dalam folder PowerBI/.

🔹 Opsi 2 – Download via Google Drive link

👉 [Download Hospital\_Analysis.pbix dari Google Drive](https://drive.google.com/file/d/1uED4r9KjuLMJGw45AIEFYMSycc206wUP/view?usp=drive_link)

---

## 🙍 Tentang Saya

Hai, saya **Ahmad Zaki Amani** 👋

✨ Saya tertarik pada bidang **Data Analytics** dan **Business Intelligence**, dengan fokus membangun dashboard, membuat visualisasi data, dan mengubah data mentah menjadi insight yang bisa ditindaklanjuti.

💡 Proyek ini adalah bagian dari portofolio saya, yang menunjukkan kemampuan dalam:

* Visualisasi data & storytelling
* Desain dashboard (Power BI, Tableau)
* Transformasi & analisis data
* Solusi Business Intelligence

📫 Mari terhubung dan berkolaborasi!

[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge\&logo=gmail\&logoColor=white)](mailto:ahmadzaki27.az@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge\&logo=linkedin\&logoColor=white)](https://www.linkedin.com/in/ahmad-zaki-amani-ab091635b/)

---
