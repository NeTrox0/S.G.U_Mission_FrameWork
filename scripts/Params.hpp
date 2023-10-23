class Params {
	class time_title { // << Gear Options >>
		title = "===Gear Options===";
        values[]={0};
        texts[]={""};
        default = 0;
    };
	class Gear_Camo { 
		title = "Camo of the uniform used by players";
        values[]={0, 1, 2, 3, 4, 5, 6, 7};
        texts[]={"M90", "M90K", "M90S", "MC", "MCT", "MCS", "PMC", "MC SOF"};
        default = 0;
    };
	class Gear_Wpn { 
		title = "Type of weapons to be used by the players";
        values[]={0, 1, 2, 3};
        texts[]={"MX A3", "AK5 SFP", "MK18 RHS", "PMC RHS"};
        default = 0;
    };
/*		
	class spacer_1 { // Spacer
		title = " ";
        values[]={0};
        texts[]={""};
        default = 0;
    };

	class time_title { // << Time options >>
		title = "===Time Options===";
        values[]={0};
        texts[]={""};
        default = 0;
    };

	#define COUNTDOWN_MIN	600
	#define COUNTDOWN_MAX	3600
	#define COUNTDOWN_DEFAULT	-1
	#include "\a3\Functions_F\Params\paramCountdown.inc"
	
	#define DAYTIMEHOUR_DEFAULT 12
	#include "\a3\functions_f\Params\paramDaytimeHour.hpp"
	
	#define TIMEACCELERATION_DEFAULT 1
	#include "\a3\Functions_F_MP_Mark\Params\paramTimeAcceleration.hpp"
	
	class spacer_2 { // Spacer
		title = " ";
        values[]={0};
        texts[]={""};
        default = 0;
    };
	
	class weather_title { // << weather options >>
		title = "===Weather Options===";
        values[]={0};
        texts[]={""};
        default = 0;
    };
	
	#define WEATHER_DEFAULT	50
	#include "\a3\functions_f\Params\paramWeather.hpp"
*/
};