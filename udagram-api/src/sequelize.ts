import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";

export const sequelize = new Sequelize(
  "postgres://postgres:adminMenna@database-1.c28dxy2jjvpg.us-east-1.rds.amazonaws.com:5432/postgres"
);
