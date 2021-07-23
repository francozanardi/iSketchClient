var usersOnline = document.getElementById('usersOnline');
var downloads = document.getElementById('downloads');

function updateStats(){
    fetch('https://fair-weather-naviga.000webhostapp.com/iSketchClient/stats/getStats.php').
    then(res => res.text()).
    then(resText => {
        downloads.innerText = resText.split(';')[0].split(':')[1];
        usersOnline.innerText = resText.split(';')[1].split(':')[1];
    }).catch(e => {
        console.log(e);
    })
}

function isOnline(){
    fetch('https://fair-weather-naviga.000webhostapp.com/iSketchClient/stats/userOnline.php')
    .catch(e => console.log(e));
}

function isOffline(){
    fetch('https://fair-weather-naviga.000webhostapp.com/iSketchClient/stats/userOffline.php')
    .catch(e => console.log(e));
}

updateStats();