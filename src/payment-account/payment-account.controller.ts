import { Body, Controller, Post } from '@nestjs/common';
import { PaymentAccountService } from './payment-account.service';
import { CreatePaymentAccountDto } from './dto';

@Controller('payment-account')
export class PaymentAccountController {
  constructor(private paymentAccountService: PaymentAccountService) {}

  @Post()
  create(VendorPaymentId: number, @Body() dto: CreatePaymentAccountDto) {
    return this.paymentAccountService.create(VendorPaymentId, dto);
  }
}
