begin transaction MyT with MARK 'MyT'

select *
from [dbo].[tblEmployee]

update [dbo].[tblEmployee]
set EmployeeNumber = 122
where EmployeeNumber = 123

commit tran
--rollback tran