import { Body, Controller, Post } from '@nestjs/common';
import { VendorPaymentService } from './vendor-payment.service';
import { CreateVendorPaymentDto } from './dto';

@Controller('vendor-payment')
export class VendorPaymentController {
  constructor(private vendorPaymentService: VendorPaymentService) {}

  @Post()
  createVendorPayment(@Body() dto: CreateVendorPaymentDto) {
    return this.vendorPaymentService.createVendorPayment(dto);
  }
}
