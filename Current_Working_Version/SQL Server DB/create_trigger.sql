use dub
go
create trigger dbo.create_trigger on dbo.Dub_Request_tbl
after insert not for replication as
begin
	set nocount on;

	update dbo.Dub_Request_tbl
	set dbo.Dub_Request_tbl.Date_Record_Created = getdate()
	from inserted
	where inserted.Request_Id = dbo.Dub_Request_tbl.Request_Id;
end
