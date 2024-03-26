import { Module } from '@nestjs/common';
import { VendorPaymentController } from './vendor-payment.controller';
import { VendorPaymentService } from './vendor-payment.service';

@Module({
  controllers: [VendorPaymentController],
  providers: [VendorPaymentService],
})
export class VendorPaymentModule {}
