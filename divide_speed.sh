#/bin/sh
echo "start"
DATA_DIR=ALL_SPEED/
FILENAME=SPEED_

for (( YEAR=2009; YEAR<=2014; YEAR++))
do
    for (( MONTH=1; MONTH<=9; MONTH++))
    do
	for (( DAY=1; DAY<=9; DAY++))
	do
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Starting querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	    python querycsv.py -i ./${DATA_DIR}${FILENAME}${YEAR}_0${MONTH}.csv -o ${FILENAME}${YEAR}_0${MONTH}_0${DAY}.csv "select * from ${FILENAME}${YEAR}_0${MONTH} where Date like '${YEAR}-0${MONTH}-0${DAY}%' order by TimePeriod"
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Finished querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	done
	for (( DAY=10; DAY<=31; DAY++))
	do
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Starting querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	    python querycsv.py -i ./${DATA_DIR}${FILENAME}${YEAR}_0${MONTH}.csv -o ${FILENAME}${YEAR}_0${MONTH}_${DAY}.csv "select * from ${FILENAME}${YEAR}_0${MONTH} where Date like '${YEAR}-0${MONTH}-${DAY}%' order by TimePeriod"
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Finished querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	done
    done
    for (( MONTH=10; MONTH<=12; MONTH++))
    do
	for (( DAY=1; DAY<=9; DAY++))
	do
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Starting querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	    python querycsv.py -i ./${DATA_DIR}${FILENAME}${YEAR}_${MONTH}.csv -o ${FILENAME}${YEAR}_${MONTH}_0${DAY}.csv "select * from ${FILENAME}${YEAR}_${MONTH} where Date like '${YEAR}-${MONTH}-0${DAY}%' order by TimePeriod"
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Finished querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	done
	for (( DAY=10; DAY<=31; DAY++))
	do
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Starting querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	    python querycsv.py -i ./${DATA_DIR}${FILENAME}${YEAR}_${MONTH}.csv -o ${FILENAME}${YEAR}_${MONTH}_${DAY}.csv "select * from ${FILENAME}${YEAR}_${MONTH} where Date like '${YEAR}-${MONTH}-${DAY}%' order by TimePeriod"
	    echo "$(date +%Y-%m-%dT%H:%M:%S): Finished querycsv for YEAR==$YEAR MONTH==$MONTH DAY==$DAY"
	done
    done
done
