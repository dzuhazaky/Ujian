/*
  Warnings:

  - You are about to alter the column `lama_sewa` on the `Rent` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `Rent` MODIFY `lama_sewa` INTEGER NOT NULL DEFAULT 0;
