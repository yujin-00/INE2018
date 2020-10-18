DATA score1;
	INFILE "/folders/myfolders/score1.txt";
	INPUT GEN$ KOR MAT ENG SCI;
	
DATA score2;
	INFILE "/folders/myfolders/score2.txt";
	INPUT GEN$ KOR MAT ENG SCI;
	
DATA scores;
	SET score1 score2;
	
DATA TOTAL_scores;
	SET scores;
	TOTAL = KOR*2 + MAT*4 + ENG*2 + SCI*2;

DATA NOTE_scores;	
	SET TOTAL_scores;
	IF TOTAL >= 800 THEN NOTE="GREAT";
	ELSE IF TOTAL >= 600 THEN NOTE="GOOD";
	ELSE IF TOTAL >= 400 THEN NOTE="OK";
	ELSE NOTE="FAIL";

DATA RESULT_scores;
	SET NOTE_scores;
	KEEP MAT TOTAL NOTE;

RUN;

	
	