//======================================================
// SGU Brief, WEST! 
//======================================================

//Credits - Ditt namn bör ju stå här, inte mitt..
_timeandweather0 = player createDiaryRecord ["Diary", 
["Credits", "Trox, SGU."]];

//Tid och väder
_timeandweather0 = player createDiaryRecord ["Diary", 
["Time and weather", "
Sen kväll,<br /> 
Beneath a steel sky.
"]];

//Själva briefen, vad är vår uppgift, vad är våra order... VAR KORT
_briefing0 = player createDiaryRecord ["Diary", 
["Briefing", "
Vad är uppgiften? <br />
Beslut<br />
Order.
"]];

//Egna resurser
_resurser0 = player createDiaryRecord ["Diary", 
["Egna resurser", "
Vad har vi för resurser? <br />
Vad kan vi jobba med? <br />
Har vi helikoptrar, bilar osv.
"]];

//Intel om fiendens resurser - Notera att du inte måste ha med all information om vi inte vet.
//	Skriv i sånt fall att vi inte vet.
_intel0 = player createDiaryRecord ["Diary", 
["Intelligence report", "
Vad har fienden för resurser? <br />
Har de stridsvagnar/APC/techicals? <br />
Statiska vapen? <br />
AA? <br />
Var rör sig fienden? <br />
IEDer/minor? <br />
Civila?
"]];

//Sitrep - Lägesrapport. Varför är vi här?
_sitrep0 = player createDiaryRecord ["Diary", 
["Sitrep", "
Vad har hänt? <br />
Finns det någon historia bakom händelserna? <br />
Vad är bakgrunden? <br />
Varför ar vi har?
"]];


//-----------------------------------------------------------------------------------
//	Skapar våra radiokanaler som text under egen "flik"
_index = player createDiarySubject ["SGU_Radio"," Radiokanaler"];

_index1 = player createDiaryRecord ["SGU_Radio", ["Grupper (RF-7800S-TR)", "
[ Grupper ]<br />
Kalle Sigurd: CH 1, FREQ: 100<br /><br />
Adam Kalle: CH 2, FREQ: 110<br />
Beritl Kalle: CH 3, FREQ: 120<br />
Cesar Kalle: CH 4, FREQ: 130<br />
<br />
[ Enablers ]<br />
<br />
"]];

_index2 = player createDiaryRecord ["SGU_Radio", ["Pluton & grupp (RT-1523G, AN/PRC-152)", "
[ Ledning ]<br />
Kalle Sigurd Plutonsnät: CH 2, FREQ: 52<br />
Viktor Urban: CH 4, FREQ: 60 <br />
Rudolf Urban: CH 4, FREQ: 60 <br />
CASNET: CH 6, FREQ: 65 <br />

"]];