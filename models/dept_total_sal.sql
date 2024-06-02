select deptno, dname, sum(sal) as total_sal
from {{ ref("emp_dept") }}
group by deptno, dname
