import { Module } from '@nestjs/common';
import { SapModule } from './sap/sap.module';
import { AuthModule } from './auth/auth.module';
import { PrismaModule } from './prisma/prisma.module';
import { VendorPaymentModule } from './vendor-payment/vendor-payment.module';
import { PaymentAccountModule } from './payment-account/payment-account.module';

@Module({
  imports: [SapModule, AuthModule, PrismaModule, VendorPaymentModule, PaymentAccountModule],
})
export class AppModule {}
