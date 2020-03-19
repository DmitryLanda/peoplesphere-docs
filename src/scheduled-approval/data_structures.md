# Data Structures

## ScheduledApproval (object)
+ uuid: `34425f31-d9f3-37bd-b90d-e5a7f7f85fc1` (string, required)
+ status: pending (enum[string], required)
    - pending
    - done
    - failed
+ is_mass_edit: true (boolean, required)
+ approval_scheduled_date: `2019-04-24 11:47:47` (string, required)
+ author (User, fixed-type)
+ form_instance (FormInstance, fixed-type)
+ scheduled_approvals (array[ScheduledApprovalItem], fixed-type)

## ScheduledApprovalItem (object)
+ id: 1 (number, required)
+ status: pending (enum[string], required)
    - pending
    - done
    - failed
+ approval_scheduled_date: `2019-04-24 11:47:47` (string, required)
+ pso (Pso, fixed-type)
+ fields (array[FieldForm With Value], fixed-type)