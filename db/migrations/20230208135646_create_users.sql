-- migrate:up
CREATE TABLE users {
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NULL,
    profile_image VARCHAR(3000) NULL,
    social_id BIGINT NULL,
    username VARCHAR(100) NOT NULL,
    day_count INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT users_social_fk FOREIGN KEY (social_id) REFERENCES social_type(id)
}

-- migrate:down
DROP TABLE users
