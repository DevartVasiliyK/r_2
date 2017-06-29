CREATE TABLE [dbo].[film_actor] (
  [actor_id] [int] NOT NULL,
  [film_id] [int] NOT NULL,
  [last_update] [datetime] NOT NULL CONSTRAINT [DF_film_actor_last_update] DEFAULT (getdate()),
  PRIMARY KEY CLUSTERED ([actor_id], [film_id])
)
ON [PRIMARY]
GO