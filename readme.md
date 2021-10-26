Egy alkalmazás fejlesztésén dolgozol, egy nagyobb csapat részeként.
Felmerül a következő fejlesztési igény:
Egy külső ügyfélpanaszokat kezelő rendszer adatokat küld keresztül a mi rendszerünkön.
A panaszok a következő adatokkal rendelkeznek:
Cím, leírás, időbélyeg, státusz. Státuszai lehetnek nyitott, folyamatban és lezárt. Továbbá az adatok között az is tárolva van, hogy magas prioritással adták-e fel az igényt.

A mi alkalmazásunk a következőket kell hogy tudja:
- Fel kell hogy ismerje, és objektumban kell hogy tárolja a bejövő adatokat
- ki kell tudnunk szamolni, hogy hany magas prioritasu, nem meg oldott ugylet van a rendszerben
- tudnunk kell hogy az osszes rendszerben talalhato panasz kozul mennyi lett megoldva
- A nagyprioritású, még nyitott státuszú panaszokat tovább kell küldenie egy másik rendszer adattáraba.

A rendszer adatbázisában el vannak tárolva ügyintézők is. Az ügyintézők a következő tulajdonságokkal rendelkeznek: név, email, telefonszam. Tovabba az is tarolva van a rendszerben, hogy az adott ugyintezo kiemelt minositesu-e. Az ugyintezohoz tobb panaszeset is tartozhat, de egy panasznak csak egy ugyintezoje van. Erdemes lehet a panaszkezelo objektumban tarolni a hozza tartozo panaszokat.

 A bejövő panaszokat a megfelelő ügyintézőknek meg kell kapni. Ez a kovetkezoket jelenti:

- a panaszok kozul a legregebbieket kell eloszor odaadni ugyintezonek
- magas prioritasu panaszt csak kiemelt minositesu panaszkezelo kaphat meg
- alacsony prioritasu panasz pedig a tobbi ugyintezohoz keruljon