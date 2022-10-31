import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import {Logger} from "@nestjs/common";
import { FastifyAdapter, NestFastifyApplication } from '@nestjs/platform-fastify';
const PORT = 3017

async function bootstrap() {
  const app = await NestFactory.create<NestFastifyApplication>(
      AppModule,
      new FastifyAdapter()
  );
  await app.listen(PORT);

  Logger.log(`HTTP interface listen port: ${PORT}`)
}
bootstrap();
