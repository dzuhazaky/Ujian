/*
  Warnings:

  - You are about to drop the column `bookdate` on the `Rent` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Rent` DROP COLUMN `bookdate`,
    ADD COLUMN `tgl` INTEGER NOT NULL DEFAULT 0;
