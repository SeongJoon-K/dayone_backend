-- migrate:up
CREATE TABLE likes {
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    emotion_type VARCHAR NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT likes_users_fk FOREIGN KEY (user_id) REFERENCES users (id)
    CONSTRAINT likes_posts_fk FOREIGN KEY (post_id) REFERENCES posts (id)
}

-- migrate:down
DROP TABLE likes
