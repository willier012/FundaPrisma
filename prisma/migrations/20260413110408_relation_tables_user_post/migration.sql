/*
  Warnings:

  - Added the required column `userid` to the `Post` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `post` ADD COLUMN `userid` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Post` ADD CONSTRAINT `Post_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
