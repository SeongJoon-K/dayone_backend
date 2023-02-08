import { Module } from '@nestjs/common';
import { UsersController } from './users.controller';
import { UsersService } from './users.service';

@Module({
  // controller와 service가 정의 되어야 컨트롤러 안에서 이용이 가능함
  controllers: [UsersController],
  providers: [UsersService],
})
export class UsersModule {}
