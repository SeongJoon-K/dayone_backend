-- migrate:up
CREATE TABLE goods {
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    post_id BIGINT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT goods_users_fk FOREIGN KEY (user_id) REFERENCES users (id)
    CONSTRAINT goods_posts_fk FOREIGN KEY (post_id) REFERENCES posts (id)
}

-- migrate:down
DROP TABLE goods
