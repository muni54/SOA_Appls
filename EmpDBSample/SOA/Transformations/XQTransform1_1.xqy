xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace emp="http://xmlns.oracle.com/pcbpel/adapter/db/top/EmpDBRef";
(:: import schema at "../Schemas/EmpDBRef_table.xsd" ::)

declare variable $InvokeDB_OV.EmployeesCollection as element() (:: schema-element(emp:EmployeesCollection) ::) external;

declare function local:funcXqtransform1_1($InvokeDB_OV.EmployeesCollection as element() (:: schema-element(emp:EmployeesCollection) ::)) as element() (:: schema-element(emp:EmployeesCollection) ::) {
    <emp:EmployeesCollection>
        {
            for $Employees in $InvokeDB_OV.EmployeesCollection/emp:Employees
            return 
            <emp:Employees>
                <emp:employeeId>{fn:data($Employees/emp:employeeId)}</emp:employeeId>
                {
                    if ($Employees/emp:firstName)
                    then <emp:firstName>{fn:data($Employees/emp:firstName)}</emp:firstName>
                    else ()
                }
                {
                    if ($Employees/emp:lastName)
                    then <emp:lastName>{fn:data($Employees/emp:lastName)}</emp:lastName>
                    else ()
                }
                {
                    if ($Employees/emp:email)
                    then <emp:email>{fn:data($Employees/emp:email)}</emp:email>
                    else ()
                }
                {
                    if ($Employees/emp:phoneNumber)
                    then <emp:phoneNumber>{fn:data($Employees/emp:phoneNumber)}</emp:phoneNumber>
                    else ()
                }
                {
                    if ($Employees/emp:hireDate)
                    then <emp:hireDate>{fn:data($Employees/emp:hireDate)}</emp:hireDate>
                    else ()
                }
                {
                    if ($Employees/emp:jobId)
                    then <emp:jobId>{fn:data($Employees/emp:jobId)}</emp:jobId>
                    else ()
                }
                {
                    if ($Employees/emp:salary)
                    then <emp:salary>{fn:data($Employees/emp:salary)}</emp:salary>
                    else ()
                }
                {
                    if ($Employees/emp:commissionPct)
                    then <emp:commissionPct>{fn:data($Employees/emp:commissionPct)}</emp:commissionPct>
                    else ()
                }
                {
                    if ($Employees/emp:managerId)
                    then <emp:managerId>{fn:data($Employees/emp:managerId)}</emp:managerId>
                    else ()
                }
                {
                    if ($Employees/emp:departmentId)
                    then <emp:departmentId>{fn:data($Employees/emp:departmentId)}</emp:departmentId>
                    else ()
                }
            </emp:Employees>
        }
    </emp:EmployeesCollection>
};

local:funcXqtransform1_1($InvokeDB_OV.EmployeesCollection)
