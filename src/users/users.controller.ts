import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { User } from './user.entities';
import { UsersService } from './users.service';

@Controller('users')
export class UsersController {
  // `constructor를 사용해 UserService를 가져와서 사용합니다.
  // controller에 service를 주입하기 위해서 user.module.ts에 controller와 service가 정의되어야함
  constructor(private readonly userService: UsersService) {}
  @Get()
  getAll(): User[] {
    return this.userService.getAll();
  }

  @Get('/:id')
  getById(@Param('id') userId: number): User {
    return this.userService.getOne(userId);
  }
}
