-- SELECT * FROM QuanLySinhVien.Subject;
-- select s.*, m.mark as max from subject s join mark m on s.subid = m.subid where mark=(select max(mark)from mark)
select s.*,avg(mark) as `diem trung binh` from student s join mark m on m.studentid = s.studentid group by s.studentid order by avg(mark)