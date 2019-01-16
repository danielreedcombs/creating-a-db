PRAGMA foreign_keys = ON;
DROP TABLE IF EXISTS Relationships;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Msg;
DROP TABLE IF EXISTS event;
DROP TABLE IF EXISTS news_article;
DROP TABLE IF EXISTS task;


CREATE TABLE `Relationships` (
    `relationshipid`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `userid`    TEXT NOT NULL,
    `friendid`    TEXT NOT NULL

);

CREATE TABLE `User` (
    `userId`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `email`    TEXT NOT NULL,
    `password`    TEXT NOT NULL,
    `displayname`    TEXT NOT NULL
);

CREATE TABLE `Msg` (
    `messageid`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `userid`    TEXT NOT NULL,
    `text`    TEXT NOT NULL,
    `isedited`    TEXT NOT NULL
);

CREATE TABLE `event` (
    `eventid`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `userid`    TEXT NOT NULL,
    `name`    TEXT NOT NULL,
    `location`    TEXT NOT NULL
);

CREATE TABLE `news_article` (
    `news_article_id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `userid`    TEXT NOT NULL,
    `title`    TEXT NOT NULL,
    `summary`    TEXT NOT NULL,
    `timestamp` TEXT NOT NULL,
    `url` TEXT NOT NULL
);

CREATE TABLE `task` (
    `taskid`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `userid`    TEXT NOT NULL,
    `due_by`    TEXT NOT NULL,
    `name`    TEXT NOT NULL,
    `status` TEXT NOT NULL
);

