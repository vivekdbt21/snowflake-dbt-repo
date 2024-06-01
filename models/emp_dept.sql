select e.empno,e.ename,e.sal, d.deptno,d.dname from 
{{ ref('emp') }} e
inner join
{{ ref('dept') }} d
on e.deptno=d.deptno