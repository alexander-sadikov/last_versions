-- Create the table
CREATE TABLE content_versions (
    id INT,
    version INT,
    content TEXT,
    PRIMARY KEY (id, version)
);

-- Insert sample data
INSERT INTO content_versions (id, version, content)
VALUES (1, 1, 'Content for id 1, version 1'),
       (2, 1, 'Content for id 2, version 1'),
       (1, 2, 'Content for id 1, version 2'),
       (1, 3, 'Content for id 1, version 3');

-- Create the stored procedure
DELIMITER //

CREATE PROCEDURE GetLatestContentVersions()
BEGIN
SELECT t1.id, t1.version, t1.content
FROM content_versions t1
INNER JOIN (
    SELECT id, MAX(version) AS max_version
    FROM content_versions
    GROUP BY id
) t2 ON t1.id = t2.id AND t1.version = t2.max_version;
END //

DELIMITER ;