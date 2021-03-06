DATA FISH;
	SET SASHELP.FISH;
	
PROC PLOT DATA=FISH;
	PLOT WEIGHT*SPECIES="o";
	
PROC MEANS DATA=FISH STDDEV;
	CLASS SPECIES;
	VAR WEIGHT;
	
DATA CLASS;
	SET SASHELP.CLASS;
	
PROC SORT DATA=CLASS;
	BY AGE;
	
PROC UNIVARIATE DATA=CLASS;
	BY AGE;
	VAR WEIGHT;
	
PROC PLOT DATA=CLASS;
	PLOT WEIGHT*AGE="o"/
	VAXIS= 50 to 160 BY 10 
	HAXIS= 10 to 20 BY 1;
		
RUN;
	