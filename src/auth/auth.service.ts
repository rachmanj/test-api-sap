import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import * as argon from 'argon2';
import { AuthDto } from './dto';

@Injectable()
export class AuthService {
  constructor(private prisma: PrismaService) {}

  async signUp(dto: AuthDto) {
    // generata passqord hash
    const hash = await argon.hash(dto.password);

    // save user to db
    const user = await this.prisma.user.create({
      data: {
        email: dto.email,
        hash,
      },
    });

    return user;
  }

  signIn() {
    return { msg: 'this is from service Sign in' };
  }
}
