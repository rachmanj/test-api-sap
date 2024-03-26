import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateVendorPaymentDto } from './dto';

@Injectable()
export class VendorPaymentService {
  constructor(private prisma: PrismaService) {}

  async createVendorPayment(dto: CreateVendorPaymentDto) {
    const vendorPayment = await this.prisma.vendorPayment.create({
      data: { ...dto },
    });

    return vendorPayment;
  }
}
