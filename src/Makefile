all: Surv_SpaceAgeTime_ByType_withUnknownType.so Surv_SpaceAgeTime.so
	# Comment here preserves the prior tab
Surv_SpaceAgeTime_ByType_withUnknownType.so: Surv_SpaceAgeTime_ByType_withUnknownType.cpp
	"$(R_HOME)/bin/Rscript" --vanilla -e "TMB::compile('Surv_SpaceAgeTime_ByType_withUnknownType.cpp','-O0 -g')"
Surv_SpaceAgeTime.so: Surv_SpaceAgeTime.cpp
	"$(R_HOME)/bin/Rscript" --vanilla -e "TMB::compile('Surv_SpaceAgeTime.cpp','-O0 -g')"

clean:
	rm -rf *o
