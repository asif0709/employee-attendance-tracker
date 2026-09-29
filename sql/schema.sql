CREATE DATABASE IF NOT EXISTS attendance_db;
USE attendance_db;
CREATE TABLE IF NOT EXISTS employees(id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(100) NOT NULL,department VARCHAR(100) NOT NULL);
CREATE TABLE IF NOT EXISTS attendance(id INT PRIMARY KEY AUTO_INCREMENT,employee_id INT NOT NULL,attendance_date DATE NOT NULL,status ENUM('PRESENT','ABSENT') NOT NULL,FOREIGN KEY(employee_id) REFERENCES employees(id) ON DELETE CASCADE,UNIQUE(employee_id,attendance_date));
CREATE INDEX idx_attendance_date ON attendance(attendance_date);