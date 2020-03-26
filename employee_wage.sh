#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Calculate Daily Employee Wage assume per hour wage =20 daily working hours 8
# Add Part time Employee & Wage - Assume Part time Hour is 4
# Solving using Case Statement
# Calculating Wages for a Month  Assume 20 Working Day per Month
# Calculate Wages till a condition of total working hours or days is reached for a month - Assume 100 hours
# Refactor the Code to write a function to get work hours
# Store the Daily Wage along with the Total Wage
#----------------------------------------------------------------------------------------------------------

echo "   ------------ Welcome to Employee Wage Computation Program ---------------    "


# variables
total_wage=0
wage=20
working_hrs=8
part_wrk_hrs=4
hours=0
days=1
# declare a dictionary to store daily wages
declare -A wage_dic


function work_hours () {
	if  [[ $days -gt 20 -o $hours -ge 100 ]]
	then
		return
	fi
	# randomly select attedance of the employee 2-parttime present 1-ful time present 0-absent
	attendance=$(( RANDOM % 3 ))
	# if employee present calculate wage
	case $attedance in 
		1) # if full time increase hourse = 8
			if [[ $hours + 8  -gt 100 ]]
			then
				hrs=$(( $hours - 100 ))
				hours=100
			else
				hrs=8
				hours=$(( hours + hrs ))

			fi
			wage_dic[$days]=$(( wage * hrs )) ;;
		2)  #if it part increase hours  4
			if [[ $hours + 4  -gt 100 ]]
                        then
                                hrs=$(( $hours - 100 ))
                                hours=100
                        else
                                hrs=4
                                hours=$(( hours + hrs ))

                        fi
                        wage_dic[$days]=$(( wage * hrs )) 
			;;
		0) # absent then increase the day only no hours

			wage_die[$days]=$(( 0 ))
	esac
	(( days++ ))
	work_hours
}

# total wage = total hours * wage
total_wage=$(( hours * wage ))
echo " wage of the employee  =  $total_wage "


for (( i=1;i<=${#wage_dic};i++ ))
do
	echo " wage of day$i  = ${wage_dic[$i]} "
done
