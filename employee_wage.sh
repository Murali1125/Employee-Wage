#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch

#--------------------------------------------------------------------------------------

echo "   ------------ Welcome to Employee Wage Computation Program ---------------    "

# randomly select attedance of the employee 2-parttime present 1-ful time present 0-absent
attendance=$(( RANDOM % 3 ))
