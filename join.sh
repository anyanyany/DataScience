#!/bin/bash

ACC_FileName=ACCIDENTS_
VEH_FileName=VEHICLES_
VEH_MOD_FileName=VEHICLES_MODELS_
CAS_FileName=CASUALTIES_

DATA_DIR=rawdata/accidents/

#for (( YEAR=2009; YEAR<=2014; YEAR++))
#do
#    python querycsv.py -i ./${DATA_DIR}${ACC_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_MOD_FileName}$YEAR.csv -i ./${DATA_DIR}${CAS_FileName}$YEAR.csv -o ACC_VEH_CAS_$YEAR.csv "select a.*, v.*, vm.make, vm.model, c.* from ${ACC_FileName}$YEAR a join ${VEH_FileName}$YEAR v on a.Accident_Index=v.Acc_Index left join ${VEH_MOD_FileName}$YEAR vm on v.Acc_Index=vm.Acc_Index and v.Vehicle_Reference=vm.Vehicle_Reference left join ${CAS_FileName}$YEAR c on v.Acc_Index=c.Acc_Index and v.Vehicle_Reference=c.Vehicle_Reference"
#done


YEAR=2009
echo "$(date +%Y-%m-%dT%H:%M:%S): Starting querycsv for YEAR==$YEAR"
python querycsv.py -i ./${DATA_DIR}${ACC_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_MOD_FileName}$YEAR.csv -i ./${DATA_DIR}${CAS_FileName}$YEAR.csv -o ACC_VEH_CAS_$YEAR.csv "select a.*, v.*, vm.make, vm.model, c.* from ${ACC_FileName}$YEAR a join ${VEH_FileName}$YEAR v on a.Accident_Index=v.Acc_Index left join ${VEH_MOD_FileName}$YEAR vm on v.Acc_Index=vm.Acc_Index and v.Vehicle_Reference=vm.Vehicle_Reference left join ${CAS_FileName}$YEAR c on v.Acc_Index=c.Acc_Index and v.Vehicle_Reference=c.Vehicle_Reference"
echo "$(date +%Y-%m-%dT%H:%M:%S): Finished querycsv for YEAR==$YEAR"

YEAR=2010
echo "$(date +%Y-%m-%dT%H:%M:%S): Starting querycsv for YEAR==$YEAR"
python querycsv.py -i ./${DATA_DIR}${ACC_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_MOD_FileName}$YEAR.csv -i ./${DATA_DIR}${CAS_FileName}$YEAR.csv -o ACC_VEH_CAS_$YEAR.csv "select a.*, v.*, vm.make, vm.model, c.* from ${ACC_FileName}$YEAR a join ${VEH_FileName}$YEAR v on a.Accident_Index=v.Acc_Index left join ${VEH_MOD_FileName}$YEAR vm on v.Acc_Index=vm.Acc_Index and v.Vehicle_Reference=vm.Vehicle_Reference left join ${CAS_FileName}$YEAR c on v.Acc_Index=c.Acc_Index and v.Vehicle_Reference=c.Vehicle_Reference"
echo "$(date +%Y-%m-%dT%H:%M:%S): Finished querycsv for YEAR==$YEAR"

YEAR=2012
echo "$(date +%Y-%m-%dT%H:%M:%S): Starting querycsv for YEAR==$YEAR"
python querycsv.py -i ./${DATA_DIR}${ACC_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_MOD_FileName}$YEAR.csv -i ./${DATA_DIR}${CAS_FileName}$YEAR.csv -o ACC_VEH_CAS_$YEAR.csv "select a.*, v.*, vm.make, vm.model, c.* from ${ACC_FileName}$YEAR a join ${VEH_FileName}$YEAR v on a.Accident_Index=v.Acc_Index left join ${VEH_MOD_FileName}$YEAR vm on v.Acc_Index=vm.Acc_Index and v.Vehicle_Reference=vm.Vehicle_Reference left join ${CAS_FileName}$YEAR c on v.Acc_Index=c.Acc_Index and v.Vehicle_Reference=c.Vehicle_Reference"
echo "$(date +%Y-%m-%dT%H:%M:%S): Finished querycsv for YEAR==$YEAR"


#------
# accidents with vehicles only
#python querycsv.py -i ./${DATA_DIR}${ACC_FileName}$YEAR.csv -i ./${DATA_DIR}${VEH_FileName}$YEAR.csv -o ACC_VEH_CAS_$YEAR.csv "select a.*, v.* from ${ACC_FileName}$YEAR a join ${VEH_FileName}$YEAR v on a.Accident_Index=v.Acc_Index"
