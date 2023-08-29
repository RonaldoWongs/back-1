CREATE TABLE "Categories" (
  "id" int PRIMARY KEY,
  "Name" varchar
);

CREATE TABLE "Roles" (
  "id" int PRIMARY KEY,
  "Name" varchar
);

CREATE TABLE "Users" (
  "id" int PRIMARY KEY,
  "Name" varchar,
  "Email" varchar,
  "Password" varchar,
  "Age" int,
  "RoleID" int
);

CREATE TABLE "Courses" (
  "id" int PRIMARY KEY,
  "Title" varchar,
  "Description" text,
  "Level" varchar,
  "Teacher" int,
  "CategoryID" int
);

CREATE TABLE "CourseVideos" (
  "id" int PRIMARY KEY,
  "Title" varchar,
  "Url" varchar,
  "CourseID" int
);

ALTER TABLE "Users" ADD FOREIGN KEY ("RoleID") REFERENCES "Roles" ("id");

ALTER TABLE "Courses" ADD FOREIGN KEY ("Teacher") REFERENCES "Users" ("id");

ALTER TABLE "Courses" ADD FOREIGN KEY ("CategoryID") REFERENCES "Categories" ("id");

ALTER TABLE "CourseVideos" ADD FOREIGN KEY ("CourseID") REFERENCES "Courses" ("id");

-- Registros para Categories
INSERT INTO Categories VALUES
  (1, "Category 1"),
  (2, "Category 2");

-- Registros para Roles
INSERT INTO Roles VALUES
  (1, "student"),
  (2, "teacher"),
  (3, "admin");

-- Registros para Users
INSERT INTO Users VALUES
  (1, "User 1", "user1@example.com", "password1", 25, 1),
  (2, "User 2", "user2@example.com", "password2", 30, 2);

-- Registros para Courses
INSERT INTO Courses VALUES
  (1, "Course 1", "Description for Course 1", "Beginner", 1, 1),
  (2, "Course 2", "Description for Course 2", "Intermediate", 2, 2);

-- Registros para CourseVideos
INSERT INTO CourseVideos VALUES
  (1, "Video 1", "video_url_1", 1),
  (2, "Video 2", "video_url_2", 2);