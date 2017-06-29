CREATE TABLE [dbo].[film_actor_d] (
  [actor_id] [int] NOT NULL,
  [film_id] [int] NOT NULL,
  [last_update] [datetime] NOT NULL CONSTRAINT [DF_film_actor_last_update2] DEFAULT (getdate()),
  PRIMARY KEY CLUSTERED ([actor_id], [film_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[film_actor_d]
  ADD CONSTRAINT [FK_film_actor_d] FOREIGN KEY ([actor_id], [film_id]) REFERENCES [dbo].[film_actor] ([actor_id], [film_id])
GO