#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Calculate Daily Employee Wage assume per hour wage =20 daily working hours 8
# Add Part time Employee & Wage - Assume Part time Hour is 4
# Solving using Case Statement
# Calculating Wages for a Month  Assume 20 Working Day per Month
#--------------------------------------------------------------------------------------

echo "   ------------ Welcome to Employee Wage Computation Program ---------------    "


# variables
total_wage=0
wage=20
working_hrs=8
part_wrk_hrs=4
hours=0
days=0

function work_hours () {
	if  [[ $days -gt 20 -o $hours -ge 100 ]]
	then
		return
	fi
	# randomly select attedance of the employee 2-parttime present 1-ful time present 0-absent
	attendance=$(( RANDOM % 3 ))
	# if employee present calculate wage
	case $attedance in 
		1) #increase the days and hourse
			hours=$(( hours + 8 ))
			if [[ $hours -gt 100 ]]
			then
				hours=100

			fi
			;;
		2)  #if it part increase hours + 4
			hours=$(( hours + 4 )) 
			if [[ $hours -gt 100 ]]
                        then
                                hours=100

                        fi
			;;
		0) # absent then increase the day only no hours
	esac
	(( days++ ))
	work_hours
}

# total wage = total hours * wage
total_wage=$(( hours * wage ))
echo " wage of the employee  =  $total_wage "
