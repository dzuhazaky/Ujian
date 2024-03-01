/*
  Warnings:

  - The `tgl` column on the `Rent` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE `Rent` DROP COLUMN `tgl`,
    ADD COLUMN `tgl` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);
