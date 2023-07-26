CREATE TABLE Users(
   User_ID INT IDENTITY(1,1)PRIMARY KEY,
   Names VARCHAR(50) NOT NULL,
   Email VARCHAR (100),
   Date_of_birth DATE,
   Profile_Image VARBINARY
);

SELECT * FROM Users


CREATE TABLE Artists(
    Artist_ID INT IDENTITY(1,1)PRIMARY KEY,
    Names VARCHAR (40) NOT NULL,
    Genre VARCHAR (100),
    Image VARBINARY
);
SELECT * FROM Artists


CREATE TABLE Albums(
    Album_ID INT IDENTITY(1,4)PRIMARY KEY,
    Artist_ID INT,
    Name VARCHAR (50) NOT NULL,
    Release_Date DATE,
    Image VARBINARY,
    FOREIGN KEY(Artist_ID)REFERENCES Artists(Artist_ID)
);
SELECT * FROM Albums


CREATE TABLE Tracks(
    Track_ID INT IDENTITY(1,2)PRIMARY KEY,
    Album_ID INT,
    Name VARCHAR (60) NOT NULL,
    Duration INT NOT NULL,
    FOREIGN KEY(Album_ID)REFERENCES Albums(Album_ID)
    
);
SELECT * FROM Tracks

CREATE TABLE Playlists(
    Playlist_ID INT IDENTITY(1,3)PRIMARY KEY,
    User_ID INT,
    Name VARCHAR(70) NOT NULL,
    Image VARBINARY,
    FOREIGN KEY(User_ID)REFERENCES Users(User_ID)
);
SELECT * FROM PlaylistsTable

CREATE TABLE Playlists_Tracks(
    Playlist_ID INT,
    Track_ID INT,PRIMARY KEY(Playlist_ID,Track_ID),
    FOREIGN KEY(Playlist_ID)REFERENCES Playlists(Playlist_ID),
    FOREIGN KEY(Track_ID)REFERENCES Tracks(Track_ID),
);

SELECT * FROM Playlists_Tracks

CREATE TABLE Followers(
    User_ID INT,
    Artist_ID INT,
    PRIMARY KEY(User_ID,Artist_ID),
    FOREIGN KEY(User_ID)REFERENCES Users(User_ID),
    FOREIGN KEY(Artist_ID)REFERENCES Artists(Artist_ID)
    
);
SELECT * FROM Followers

CREATE TABLE Likes(
    User_ID INT,
   Track_ID INT,
   Like_Date_Time DATETIME,
   PRIMARY KEY (User_ID, Track_ID),
   FOREIGN KEY(User_ID) REFERENCES Users(User_ID),
   FOREIGN KEY(Track_ID) REFERENCES Tracks(Track_ID)

);
SELECT * FROM Likes

SELECT * FROM Users
SELECT * FROM Artists
SELECT * FROM Albums
SELECT * FROM Tracks
SELECT * FROM PlaylistsTable
SELECT * FROM Playlists_Tracks
SELECT * FROM Followers
SELECT * FROM Likes



