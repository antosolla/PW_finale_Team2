INSERT INTO Department (departmentName) VALUES ('Ingegneria');
INSERT INTO Department (departmentName) VALUES ('Lettere e Filosofia');
INSERT INTO Department (departmentName) VALUES ('Scienze Matematiche e Fisiche');
-- ============================================================================
-- 1. TABELLA: STUDENT (25 Studenti con nomi reali)
-- ============================================================================
INSERT INTO Student (name, lastName, dateOfBirth, gender) VALUES 
('Sofia', 'Rossi', '2005-01-10', 'F'), ('Giulia', 'Bianchi', '2005-02-11', 'F'), -- 1, 2
('Martina', 'Verdi', '2005-03-12', 'F'), ('Giorgia', 'Ferrari', '2005-04-13', 'F'), -- 3, 4
('Sara', 'Russo', '2005-05-14', 'F'), -- 5 (Gruppo Ingegneria 1° Anno F - High)

('Marco', 'Colombo', '2005-06-15', 'M'), ('Matteo', 'Marini', '2005-07-16', 'M'), -- 6, 7
('Alessandro', 'Ricci', '2005-08-17', 'M'), ('Davide', 'Bruno', '2005-09-18', 'M'), -- 8, 9 (Gruppo Ingegneria 1° Anno M - High)

('Chiara', 'Moretti', '2004-01-20', 'F'), ('Elena', 'Galli', '2004-02-21', 'F'), -- 10, 11
('Francesca', 'Conti', '2004-03-22', 'F'), -- 12 (Gruppo Ingegneria 2° Anno F - High)

('Alex', 'Martini', '2005-10-10', 'Other'), ('Sam', 'Valenti', '2005-11-11', 'Other'), -- 13, 14 (Gruppo Ingegneria 1° Anno Other - Medium)

('Federica', 'Costa', '2005-01-01', 'F'), ('Alice', 'Giordano', '2005-02-02', 'F'), -- 15, 16
('Annamaria', 'Rizzo', '2005-03-03', 'F'), -- 17 (Gruppo Lettere 1° Anno F - Medium)

('Lorenzo', 'Lombardi', '2005-04-04', 'M'), ('Simone', 'Serra', '2005-05-05', 'M'), -- 18, 19 (Gruppo Lettere 1° Anno M - Low)

('Camilla', 'Caruso', '2004-06-06', 'F'), ('Beatrice', 'Ferri', '2004-07-07', 'F'), -- 20, 21 (Gruppo Lettere 2° Anno F - Low)

('Gabriele', 'Donati', '2005-08-08', 'M'), ('Tommaso', 'Patti', '2005-09-09', 'M'), -- 22, 23 (Gruppo Scienze 1° Anno M - High)

('Christian', 'Villa', '2005-10-12', 'M'), -- 24 (Gruppo Scienze 1° Anno M - Low)
('Valeria', 'Fontana', '2004-11-23', 'F'); -- 25 (Gruppo Scienze 2° Anno F - High)


-- ============================================================================
-- 2. TABELLA: ACADEMICPATH
-- ============================================================================
INSERT INTO AcademicPath (studentID, departmentID, acamedic_year, yearOfStudy, attendance_perc) VALUES 
-- Ingegneria 1° Anno F (IDs: 1, 2, 3, 4, 5)
(1, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 60.0),
(2, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 62.5),
(3, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 58.0),
(4, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 61.0),
(5, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 55.0),
-- Ingegneria 1° Anno M (IDs: 6, 7, 8, 9)
(6, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 64.0),
(7, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 59.0),
(8, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 63.0),
(9, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 60.0),
-- Ingegneria 2° Anno F (IDs: 10, 11, 12)
(10, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '2° year', 50.0),
(11, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '2° year', 52.0),
(12, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '2° year', 48.0),
-- Ingegneria 1° Anno Other (IDs: 13, 14)
(13, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 75.0),
(14, (SELECT departmentID FROM Department WHERE departmentName = 'Ingegneria'), '2025/2026', '1° year', 77.0),
-- Lettere 1° Anno F (IDs: 15, 16, 17)
(15, (SELECT departmentID FROM Department WHERE departmentName = 'Lettere e Filosofia'), '2025/2026', '1° year', 85.0),
(16, (SELECT departmentID FROM Department WHERE departmentName = 'Lettere e Filosofia'), '2025/2026', '1° year', 88.0),
(17, (SELECT departmentID FROM Department WHERE departmentName = 'Lettere e Filosofia'), '2025/2026', '1° year', 82.0),
-- Lettere 1° Anno M (IDs: 18, 19)
(18, (SELECT departmentID FROM Department WHERE departmentName = 'Lettere e Filosofia'), '2025/2026', '1° year', 95.0),
(19, (SELECT departmentID FROM Department WHERE departmentName = 'Lettere e Filosofia'), '2025/2026', '1° year', 92.0),
-- Lettere 2° Anno F (IDs: 20, 21)
(20, (SELECT departmentID FROM Department WHERE departmentName = 'Lettere e Filosofia'), '2025/2026', '2° year', 94.0),
(21, (SELECT departmentID FROM Department WHERE departmentName = 'Lettere e Filosofia'), '2025/2026', '2° year', 96.0),
-- Scienze 1° Anno M (IDs: 22, 23)
(22, (SELECT departmentID FROM Department WHERE departmentName = 'Scienze Matematiche e Fisiche'), '2025/2026', '1° year', 68.0),
(23, (SELECT departmentID FROM Department WHERE departmentName = 'Scienze Matematiche e Fisiche'), '2025/2026', '1° year', 70.0),
-- Scienze 1° Anno M "Low" (ID: 24)
(24, (SELECT departmentID FROM Department WHERE departmentName = 'Scienze Matematiche e Fisiche'), '2025/2026', '1° year', 98.0),
-- Scienze 2° Anno F (ID: 25)
(25, (SELECT departmentID FROM Department WHERE departmentName = 'Scienze Matematiche e Fisiche'), '2025/2026', '2° year', 55.0);


-- ============================================================================
-- 3. TABELLA: RISK (Qui aggreghiamo i livelli per fare massa critica)
-- ============================================================================
INSERT INTO Risk (studentID, stressLlevel, burnoutLevel, dropoutRisk) VALUES 
-- I primi 5 studenti (F) avranno TUTTI Burnout 'High'
(1, 9, 'High', 'Yes'), (2, 8, 'High', 'Yes'), (3, 10, 'High', 'Yes'), (4, 9, 'High', 'No'), (5, 9, 'High', 'Yes'),
-- I successivi 4 studenti (M) avranno TUTTI Burnout 'High'
(6, 8, 'High', 'Yes'), (7, 9, 'High', 'No'), (8, 8, 'High', 'Yes'), (9, 10, 'High', 'Yes'),
-- I successivi 3 studenti (2° anno F) avranno TUTTI Burnout 'High'
(10, 9, 'High', 'Yes'), (11, 8, 'High', 'Yes'), (12, 9, 'High', 'Yes'),
-- I 2 studenti 'Other' avranno Burnout 'Medium'
(13, 6, 'Medium', 'No'), (14, 5, 'Medium', 'No'),
-- Lettere: 3 studentesse con Burnout 'Medium'
(15, 5, 'Medium', 'No'), (16, 6, 'Medium', 'No'), (17, 5, 'Medium', 'No'),
-- Lettere: 2 studenti con Burnout 'Low'
(18, 2, 'Low', 'No'), (19, 3, 'Low', 'No'),
-- Lettere: 2 studentesse 2° anno con Burnout 'Low'
(20, 2, 'Low', 'No'), (21, 1, 'Low', 'No'),
-- Scienze: 2 studenti con Burnout 'High'
(22, 9, 'High', 'Yes'), (23, 8, 'High', 'Yes'),
-- Scienze: 1 studente con Burnout 'Low'
(24, 2, 'Low', 'No'),
-- Scienze: 1 studentessa 2° anno con Burnout 'High'
(25, 9, 'High', 'Yes');


-- ============================================================================
-- 4. TABELLE DI CORRELAZIONE: LIFESTYLE, GRADE, SUPPORT (Dati realistici di massa)
-- ============================================================================
-- Riempimento rapido per completare lo schema del DB relazionale
INSERT INTO LifeStyle (studentID, studyHoursDay, sleepHours, exercise_freq_week, partTimeJob) VALUES 
(1, 10, 4, 0, 'Yes'), (2, 9, 5, 0, 'Yes'), (3, 11, 4, 0, 'No'), (4, 9, 4, 0, 'No'), (5, 10, 5, 0, 'Yes'),
(6, 9, 4, 0, 'Yes'), (7, 10, 5, 1, 'No'), (8, 9, 4, 0, 'Yes'), (9, 11, 4, 0, 'Yes'),
(10, 10, 4, 0, 'Yes'), (11, 9, 5, 0, 'No'), (12, 10, 4, 1, 'Yes'),
(13, 7, 6, 2, 'No'), (14, 6, 6, 2, 'No'),
(15, 6, 6, 1, 'Yes'), (16, 7, 5, 0, 'No'), (17, 6, 6, 2, 'No'),
(18, 4, 8, 4, 'No'), (19, 3, 7, 3, 'No'),
(20, 4, 8, 3, 'No'), (21, 3, 8, 4, 'No'),
(22, 9, 5, 0, 'Yes'), (23, 10, 4, 0, 'No'),
(24, 4, 8, 4, 'No'),
(25, 10, 4, 0, 'Yes');

INSERT INTO Support (studentID, familyIncomeBracket, counselingAccess) VALUES 
(1,'Low','No'), (2,'Low','No'), (3,'Medium','No'), (4,'Low','No'), (5,'Low','No'),
(6,'Low','No'), (7,'Medium','No'), (8,'Low','No'), (9,'Low','No'),
(10,'Medium','No'), (11,'Low','No'), (12,'Low','No'),
(13,'Medium','No'), (14,'High','Yes'),
(15,'Medium','No'), (16,'Low','No'), (17,'High','Yes'),
(18,'High','Yes'), (19,'Medium','Yes'),
(20,'High','Yes'), (21,'Medium','Yes'),
(22,'Low','No'), (23,'Medium','No'),
(24,'High','Yes'),
(25,'Low','No');

INSERT INTO Grade (subject_name, grade, studentID) VALUES 
('Analisi I', 18.0, 1), ('Analisi I', 19.0, 2), ('Analisi I', 17.5, 3), ('Analisi I', 20.0, 4), ('Analisi I', 18.0, 5),
('Geometria', 19.0, 6), ('Geometria', 18.0, 7), ('Geometria', 21.0, 8), ('Geometria', 17.0, 9),
('Fisica I', 18.0, 10), ('Fisica I', 20.0, 11), ('Fisica I', 19.5, 12),
('Programmazione', 24.0, 13), ('Programmazione', 25.0, 14),
('Letteratura', 26.0, 15), ('Letteratura', 24.0, 16), ('Letteratura', 25.0, 17),
('Storia', 30.0, 18), ('Storia', 29.0, 19),
('Filosofia', 28.0, 20), ('Filosofia', 30.0, 21),
('Algebra', 19.0, 22), ('Algebra', 18.0, 23),
('Fisica', 30.0, 24),
('Calcolo', 18.0, 25);