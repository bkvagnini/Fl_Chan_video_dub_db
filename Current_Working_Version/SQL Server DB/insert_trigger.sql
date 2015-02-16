create trigger dbo.insert_trigger on dbo.Dub_Request_tbl
after insert set Date_Record_Created
as now(); 