use dub
go
create trigger dbo.update_trigger on dbo.Dub_Request_tbl
after update not for replication as
begin
	set nocount on;

	update dbo.Dub_Request_tbl
	set dbo.Dub_Request_tbl.Date_Record_Modified = getdate()
	from inserted
	where inserted.Request_Id = dbo.Dub_Request_tbl.Request_Id;
end
