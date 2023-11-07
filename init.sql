-- Get into correct database
USE dscc;
GO

-- Insert sample data into Writer table
INSERT INTO Writers (Name, Description, DoB, AllNumberOfBooks)
VALUES
('John Smith', 'Description for John Smith', '1980-01-01', 5),
('Mary Johnson', 'Description for Mary Johnson', '1982-02-02', 3),
('Robert Brown', 'Description for Robert Brown', '1985-03-03', 8),
('Lisa Davis', 'Description for Lisa Davis', '1988-04-04', 10),
('Michael Wilson', 'Description for Michael Wilson', '1983-05-05', 7),
('Jennifer Lee', 'Description for Jennifer Lee', '1979-06-06', 6),
('David Garcia', 'Description for David Garcia', '1987-07-07', 12),
('Susan Martinez', 'Description for Susan Martinez', '1978-08-08', 9),
('William Rodriguez', 'Description for William Rodriguez', '1986-09-09', 4),
('Linda Lopez', 'Description for Linda Lopez', '1984-10-10', 11),
('James Miller', 'Description for James Miller', '1981-11-11', 6),
('Patricia Hall', 'Description for Patricia Hall', '1989-12-12', 5),
('Charles Harris', 'Description for Charles Harris', '1977-01-13', 7),
('Karen Clark', 'Description for Karen Clark', '1982-02-14', 8),
('Richard White', 'Description for Richard White', '1983-03-15', 5),
('Margaret Turner', 'Description for Margaret Turner', '1976-04-16', 3),
('Thomas Scott', 'Description for Thomas Scott', '1981-05-17', 10),
('Nancy Young', 'Description for Nancy Young', '1980-06-18', 6),
('Daniel King', 'Description for Daniel King', '1987-07-19', 9),
('Betty Green', 'Description for Betty Green', '1984-08-20', 11);

GO
USE dscc;
GO

-- Insert sample data into Books table
-- Posts by each author
DECLARE @WriterId INT;

-- Writer 1: John Smith
SET @WriterId = (SELECT Id FROM Writers WHERE Name = 'John Smith');
INSERT INTO Books (Name, Description, Pages, WriterId)
VALUES
('The Enchanted Forest', 'Description for The Enchanted Forest', 250, @WriterId),
('Whispers in the Wind', 'Description for Whispers in the Wind', 180, @WriterId),
('Secrets of the Past', 'Description for Secrets of the Past', 220, @WriterId);
-- Continue with more titles for John Smith

-- Writer 2: Mary Johnson
SET @WriterId = (SELECT Id FROM Writers WHERE Name = 'Mary Johnson');
INSERT INTO Books (Name, Description, Pages, WriterId)
VALUES
('The Lost City', 'Description for The Lost City', 260, @WriterId),
('Echoes of the Heart', 'Description for Echoes of the Heart', 190, @WriterId),
('The Forgotten Secrets', 'Description for The Forgotten Secrets', 210, @WriterId);
-- Continue with more titles for Mary Johnson

-- Writer 3: Robert Brown
SET @WriterId = (SELECT Id FROM Writers WHERE Name = 'Robert Brown');
INSERT INTO Books (Name, Description, Pages, WriterId)
VALUES
('The Hidden Treasure', 'Description for The Hidden Treasure', 220, @WriterId),
('Legends of the Moon', 'Description for Legends of the Moon', 210, @WriterId),
('The Art of Discovery', 'Description for The Art of Discovery', 230, @WriterId);
-- Continue with more titles for Robert Brown

-- Writer 4: Lisa Davis
SET @WriterId = (SELECT Id FROM Writers WHERE Name = 'Lisa Davis');
INSERT INTO Books (Name, Description, Pages, WriterId)
VALUES
('Mysteries Unveiled', 'Description for Mysteries Unveiled', 240, @WriterId),
('The Last Voyage', 'Description for The Last Voyage', 195, @WriterId),
('Through the Ages', 'Description for Through the Ages', 210, @WriterId);
-- Continue with more titles for Lisa Davis

-- Writer 20: Betty Green
SET @WriterId = (SELECT Id FROM Writers WHERE Name = 'Betty Green');
INSERT INTO Books (Name, Description, Pages, WriterId)
VALUES
('The Hidden World', 'Description for The Hidden World', 230, @WriterId),
('Secrets of the Desert', 'Description for Secrets of the Desert', 195, @WriterId),
('Echoes from the Past', 'Description for Echoes from the Past', 215, @WriterId);
-- Continue with more titles for Betty Green
