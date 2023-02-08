-- migrate:up
CREATE TABLE posts {
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    day_count INT NOT NULL,
    passage LONGTEXT NOT NULL,
    comment LONGTEXT NOT NULL,
    emotion_count INT NOT NULL
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT posts_users_fk FOREIGN KEY (user_id) REFERENCES users (id)
}

-- migrate:down
DROP TABLE posts
