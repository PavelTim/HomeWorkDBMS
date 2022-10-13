
CREATE TABLE IF NOT EXISTS Departments (
    name VARCHAR(128) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    department VARCHAR(128) REFERENCES Departments(name)   
);
    
ALTER TABLE Departments ADD COLUMN chief_id INTEGER UNIQUE REFERENCES Staff(id);

INSERT INTO Departments(name)
    VALUES
    ('Отдел Безобразий'),
    ('Отдел Безумств'),
    ('Отдел Генерации Случайных Приказов'),
    ('Отдел Случайного Контроля');

INSERT INTO Staff(name, department)
    VALUES
    ('Иванов А.А.', 'Отдел Безобразий'),
    ('Петров Б.Б.', 'Отдел Безобразий'),
    ('Сидоров В.В.', 'Отдел Безобразий'),
    ('Пикассо П.', 'Отдел Безумств'),
    ('Дали С.', 'Отдел Безумств'),
    ('Моррисон Д.', 'Отдел Безумств'),
    ('Выбегалло А.', 'Отдел Генерации Случайных Приказов'),
    ('Камноедов М.', 'Отдел Генерации Случайных Приказов'),
    ('Корнеев В.', 'Отдел Случайного Контроля'),
    ('Привалов А.', 'Отдел Случайного Контроля');
    
UPDATE Departments
SET chief_id = 1
WHERE name = 'Отдел Безобразий';
UPDATE Departments
SET chief_id = 4
WHERE name = 'Отдел Безумств';
UPDATE Departments
SET chief_id = 8
WHERE name = 'Отдел Генерации Случайных Приказов';
UPDATE Departments
SET chief_id = 9
WHERE name = 'Отдел Случайного Контроля';