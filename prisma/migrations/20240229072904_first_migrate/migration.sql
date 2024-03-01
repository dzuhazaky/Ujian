/*
  Warnings:

  - You are about to drop the `Car` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Rent` DROP FOREIGN KEY `Rent_carID_fkey`;

-- DropTable
DROP TABLE `Car`;

-- CreateTable
CREATE TABLE `car` (
    `carID` INTEGER NOT NULL AUTO_INCREMENT,
    `Nopol` VARCHAR(191) NOT NULL DEFAULT '',
    `carType` VARCHAR(191) NOT NULL DEFAULT '',
    `Price` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`carID`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Rent` ADD CONSTRAINT `Rent_carID_fkey` FOREIGN KEY (`carID`) REFERENCES `car`(`carID`) ON DELETE RESTRICT ON UPDATE CASCADE;
