--this selection query pulls all of the info in the 7 support
-- tables into one big view so that customer can run
-- simple queries on it as a flat, single table
-- Brian K Vagnini 2/22/10
--create view dub_db_alldata as  --uncomment me to recreate the view
select d.Request_Id, d.Approval_date, d.Urgent, d.Broad_Qual, d.Non_pol,
d.Urgent_Date, d.Urgent_Time, d.Request_Date, 

--staff first and staff last
st.first as staff_first, st.last as staff_last,
 
--title
t.title,

 d.First, d.Last, 
d.Org, d.Room_Num, d.Phone, d.Ext, d.Alt_Phone, d.Email,
d.Address, d.City, d.St, d.Zip, f.Format,r.Request_Type,d.Multievent,
d.Date_of_Material1,d.Date_of_Material2,d.Date_of_Material3, d.Date_of_Material4,
d.Event1,d.Event2, d.Event3, d.Event4, d.Num_Dubs1, d.Num_Dubs2,d.Num_Dubs3, d.Num_Dubs4,
d.Dub_Notes, d.Date_of_Dub, 

 -- dub made by
dmb.first as Dub_Made_by_first, dmb.last as Dub_Made_by_last,

d.Date_Tape_Rec_Req, d.Num_Stock_Used, 

--from machine and to machine
m.Machine as From_machine, ma.machine as To_machine, 

d.Notes, d.Tape_Op_Notes, p.Payment,d.Check_Num, 
d.Card_Zip, d.Cost, d.Date_Pay_Rec, d.Replacement_Rec,d.Req_Sent_To_WFSU,

--sent by
sb.first as Sent_by_first, sb.last as Sent_by_last,

d.Date_Rep_Rec, d.Media_Picked_Up, d.Picked_Up_By, d.Date_Picked_Up, d.Needs_Shipping, 
sh.Ship_Method, d.Ship_Date,

--shipped by
shb.first as Shipped_by_first, shb.last as Shipped_by_last,
 
--contacted by
conb.first as Contacted_by_first, conb.last as Contacted_by_last,

d.Date_Contacted, d.Contact_Notes, d.Completed, d.Date_Completed,
 
--completed by
comb.first as Completed_by_first, comb.last as Completed_by_last, 
d.Recycled, d.Date_Recycled, d.Other

from dub_request_tbl as d
inner join staff_tbl as st
on d.staff=st.staff_id --staff
left join staff_tbl as dmb 
on d.dub_made_by=dmb.staff_id --dub made by
left join staff_tbl as sb 
on d.sent_by=sb.staff_id --sent by
left join staff_tbl as shb
on d.shipped_by=shb.staff_id --shipped by
left join staff_tbl as conb
on d.contacted_by= conb.staff_id --contacted by
left join staff_tbl as comb
on d.completed_by= comb.staff_id --completed by

inner join format_tbl as f
on d.format=f.format_id
inner join title_tbl as t
on d.title=t.title_id
inner join request_type_tbl as r
on d.request_type=r.request_type_id
left join payment_tbl as p
on d.payment_method=p.Payment_Id
left join ship_method_tbl as sh
on d.ship_method=sh.ship_method_id
left join machine_tbl as m --for from_machine field
on d.from_machine=m.machine_id 
left join  machine_tbl as ma --for to_machine field
on d.to_machine=ma.machine_id;