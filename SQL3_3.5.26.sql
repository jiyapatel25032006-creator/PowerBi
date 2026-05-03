CREATE DATABASE studDB;

USE studDB;

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  marks INT,
  FOREIGN KEY (student_id) REFERENCES students(id)
);

