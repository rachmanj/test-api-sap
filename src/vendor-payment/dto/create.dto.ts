export class CreateVendorPaymentDto {
  Series?: string;
  DocType?: string;
  HandWritten?: string;
  Printed?: string;
  DocDate?: string;
  DueDate?: string;
  TaxDate?: string;
  Remarks?: string;
  JournalRemarks?: string;
  U_MIS_PayType?: string;
  U_MIS_Req?: string;
  U_MIS_Signature1?: string;
  U_MIS_Signature2?: string;
  CashAccount?: string;
  DocCurrency?: string;
  CheckAccount?: string;
  CashSum?: number;
  CashSumFC?: number;
  CashSumSys?: number;
  TransferAccount?: string;
  TransferSum?: number;
  DocRate?: number;
  Reference1?: string;
}
