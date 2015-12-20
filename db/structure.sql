CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "questions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE "answers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20151213224637');

INSERT INTO schema_migrations (version) VALUES ('20151216013431');

INSERT INTO schema_migrations (version) VALUES ('20151216221310');

