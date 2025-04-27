create database foy4 ON PRIMARY
(
NAME = vtys_data,
FILENAME = 'C:\Users\BEYZA İREM ALBAYRAK\OneDrive\Masaüstü\VTL\vtysdata1.mdf',
SIZE = 8MB,
MAXSIZE = unlimited,
FILEGROWTH = 10%
)
LOG ON
(
NAME = vtys_log,
FILENAME = 'C:\Users\BEYZA İREM ALBAYRAK\OneDrive\Masaüstü\VTL\vtysdata1.ldf',
SIZE = 8MB,
MAXSIZE = unlimited,
FILEGROWTH = 10%
)