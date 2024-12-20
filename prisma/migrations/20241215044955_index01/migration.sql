-- CreateIndex
CREATE INDEX `comments_created_at_idx` ON `comments`(`created_at` DESC);

-- CreateIndex
CREATE INDEX `posts_id_idx` ON `posts`(`id`);

-- CreateIndex
CREATE INDEX `posts_created_at_idx` ON `posts`(`created_at` DESC);

-- CreateIndex
CREATE INDEX `users_id_idx` ON `users`(`id`);

-- CreateIndex
CREATE INDEX `users_del_flg_idx` ON `users`(`del_flg`);

-- RenameIndex
ALTER TABLE `comments` RENAME INDEX `comments_post_id_fkey` TO `comments_post_id_idx`;

-- RenameIndex
ALTER TABLE `comments` RENAME INDEX `comments_user_id_fkey` TO `comments_user_id_idx`;

-- RenameIndex
ALTER TABLE `posts` RENAME INDEX `posts_user_id_fkey` TO `posts_user_id_idx`;
