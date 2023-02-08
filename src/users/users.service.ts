import { Injectable, NotFoundException } from '@nestjs/common';
import { User } from './user.entities';

@Injectable()
export class UsersService {
  private users: User[] = [];

  getAll(): User[] {
    return this.users;
  }

  getOne(id: number): User {
    const user = this.users.find((user) => user.id === Number(id));
    if (!user) {
      throw new NotFoundException(`user id ${id} not found`);
    }
    return user;
  }

  deleteUserById(id: number): boolean {
    this.getOne(id);
    this.users = this.users.filter((user) => user.id !== Number(id));
    return true;
  }
}
