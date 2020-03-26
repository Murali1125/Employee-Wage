#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Calculate Daily Employee Wage assume per hour wage =20 daily working hours 8
# Add Part time Employee & Wage - Assume Part time Hour is 4
# Solving using Case Statement
# Calculating Wages for a Month  Assume 20 Working Day per Month
#--------------------------------------------------------------------------------------

echo "   ------------ Welcome to Employee Wage Computation Program ---------------    "


# wage variable to store total wage
total_wage=0
wage=20
working_hrs=8
part_wrk_hrs=4

# for month(20days) repete it for 20 times
for (( i=1;i<=20;i++ ))
do
	# randomly select attedance of the employee 2-parttime present 1-ful time present 0-absent
	attendance=$(( RANDOM % 3 ))

	# caluculate total wage as per attandace by using case statement
	case $attendance  in 
		1)	total_wage=$(( total_wage + ( wage * working_hrs ) )) ;;

		2)	 total_wage=$(( total_wage + ( wage * part_wrk_hrs ) )) ;;
	esac
done
