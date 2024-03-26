-- CreateTable
CREATE TABLE `vendor_payments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `Series` VARCHAR(191) NULL,
    `DocType` VARCHAR(191) NULL,
    `HandWritten` VARCHAR(191) NULL,
    `Printed` VARCHAR(191) NULL,
    `DocDate` DATETIME(3) NULL,
    `DueDate` DATETIME(3) NULL,
    `TaxDate` DATETIME(3) NULL,
    `Remarks` VARCHAR(191) NULL,
    `JournalRemarks` VARCHAR(191) NULL,
    `U_MIS_PayType` VARCHAR(191) NULL,
    `U_MIS_Req` VARCHAR(191) NULL,
    `U_MIS_Signature1` VARCHAR(191) NULL,
    `U_MIS_Signature2` VARCHAR(191) NULL,
    `CashAccount` VARCHAR(191) NULL,
    `DocCurrency` VARCHAR(191) NULL,
    `CheckAccount` VARCHAR(191) NULL,
    `CashSum` VARCHAR(191) NULL,
    `CashSumFC` VARCHAR(191) NULL,
    `CashSumSys` VARCHAR(191) NULL,
    `TransferAccount` VARCHAR(191) NULL,
    `TransferSum` VARCHAR(191) NULL,
    `DocRate` VARCHAR(191) NULL,
    `Reference1` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_accounts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `LineNum` INTEGER NULL,
    `AccountCode` VARCHAR(191) NULL,
    `Decription` VARCHAR(191) NULL,
    `ProfitCenter` VARCHAR(191) NULL,
    `ProjectCode` VARCHAR(191) NULL,
    `SumPaid` INTEGER NULL,
    `SumPaidFC` INTEGER NULL,
    `U_MIS_CCDepartment` VARCHAR(191) NULL,
    `U_MIS_BPCode` VARCHAR(191) NULL,
    `U_MIS_BPName` VARCHAR(191) NULL,
    `VendorPaymentId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `payment_accounts` ADD CONSTRAINT `payment_accounts_VendorPaymentId_fkey` FOREIGN KEY (`VendorPaymentId`) REFERENCES `vendor_payments`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
