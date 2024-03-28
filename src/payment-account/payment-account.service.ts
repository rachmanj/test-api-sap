import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreatePaymentAccountDto } from './dto';

@Injectable()
export class PaymentAccountService {
  constructor(private prisma: PrismaService) {}

  async create(VendorPaymentId: number, dto: CreatePaymentAccountDto) {
    const paymentAccount = await this.prisma.paymentAccount.create({
      data: { ...dto, VendorPaymentId },
    });

    return paymentAccount;
  }
}
