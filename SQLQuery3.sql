CREATE TABLE [factairbnb] (
  [List_SID] int PRIMARY KEY IDENTITY(1, 1),
  [ID] int,
  [Experiences] nvarchar(255),
  [Accommodates] int,
  [Bathrooms] int,
  [Bedrooms] int,
  [Beds] int,
  [Bed_Type] nvarchar(255),
  [Price] float,
  [Number_of_reviews] int,
  [Review_scores_rating] int,
  [Review_Scores_Acuracy] int,
  [Review_Scores_Cleanliness] int,
  [Review_Scores_Checkin] int,
  [Review_Scores_Communication] int,
  [Review_Scores_Location] int,
  [Review_Scores_Value] int,
  [PropertytypeSID] int,
  [LocationSID] int,
  [HostSID] int
)
GO

CREATE TABLE [dimpropertytype] (
  [PropertytypeSID] int PRIMARY KEY IDENTITY(1, 1),
  [Propertytype] nvarchar(255),
  [RoomType] nvarchar(255)
)
GO

CREATE TABLE [dimlocation] (
  [LocationSID] int PRIMARY KEY IDENTITY(1, 1),
  [City] nvarchar(255),
  [State] nvarchar(255),
  [Country] nvarchar(255),
  [Latitude] nvarchar(255),
  [Longitude] nvarchar(255)
)
GO

CREATE TABLE [dimhost] (
  [HostSID] int PRIMARY KEY IDENTITY(1, 1),
  [hostid] int,
  [hostname] int,
  [Hostsince] date,
  [Host_Response_Time] nvarchar(255),
  [Host_Response_Rate] int,
  [Host_Neighbourhood] nvarchar(255),
  [Host_Listings_Count] int,
  [Host_Verifications] nvarchar(255),
  [Cancellation_Policy] nvarchar(255)
)
GO

ALTER TABLE [factairbnb] ADD FOREIGN KEY ([PropertytypeSID]) REFERENCES [dimpropertytype] ([PropertytypeSID])
GO

ALTER TABLE [factairbnb] ADD FOREIGN KEY ([LocationSID]) REFERENCES [dimlocation] ([LocationSID])
GO

ALTER TABLE [factairbnb] ADD FOREIGN KEY ([HostSID]) REFERENCES [dimhost] ([HostSID])
GO
