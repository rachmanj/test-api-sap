/*
  Warnings:

  - You are about to alter the column `CashSum` on the `vendor_payments` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `CashSumFC` on the `vendor_payments` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `CashSumSys` on the `vendor_payments` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `TransferSum` on the `vendor_payments` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `DocRate` on the `vendor_payments` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `vendor_payments` MODIFY `CashSum` INTEGER NULL,
    MODIFY `CashSumFC` INTEGER NULL,
    MODIFY `CashSumSys` INTEGER NULL,
    MODIFY `TransferSum` INTEGER NULL,
    MODIFY `DocRate` INTEGER NULL;
