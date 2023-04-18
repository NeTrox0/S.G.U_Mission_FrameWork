_message = param [0, " "];
_time = param [1, 1];

titleText ["", "BLACK FADED", 1];
sleep 1;
titleText [format["<t color='#FFFFFF' size='3'>%1</t>",_message], "BLACK FADED", -1, true, true];
SkipTime _time;
sleep 2;
titleText ["", "BLACK IN", 5];
