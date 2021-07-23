// import customProtocolCheck from "./custom-protocol-check.js";

var notFound = document.getElementById('notFoundClient');
var loading = document.getElementById('loadingClient');
var playing = document.getElementById('playingClient');
var onlyWindows = document.getElementById('onlyWindowsOS');

var clientLoaded = false;
var isWindowsOS = false;

function showPlaying(){
    notFound.classList.add('hide');
    loading.classList.add('hide');
    playing.classList.remove('hide');
}

function showLoading(){
    notFound.classList.add('hide');
    loading.classList.remove('hide');
    playing.classList.add('hide');
}

function showNotFound(){
    notFound.classList.remove('hide');
    loading.classList.add('hide');
    playing.classList.add('hide');
}

function showOnlyWindows(){
    notFound.classList.add('hide');
    loading.classList.add('hide');
    playing.classList.add('hide');
    onlyWindows.classList.remove('hide');
}

function tryToLoadiSketchClient(){
    customProtocolCheck(
        "isketchclient://play",
        function() {showNotFound(); clientLoaded = false;},
        function() {showPlaying(); clientLoaded = true; isOnline(); setTimeout(updateStats, 10000)},
        1500
      );
}

function checkIfiSketchClientWasInstallled(){
    if(!document.hidden){
        if (!clientLoaded && isWindowsOS){
            showLoading();
            tryToLoadiSketchClient();
        } 
    } else {
        setTimeout(checkIfiSketchClientWasInstallled, 1000);
    }

}

// document.addEventListener("visibilitychange", function() {
//     checkIfiSketchClientWasInstallled();
// }, false);

// window.addEventListener('focus', function() {
//     checkIfiSketchClientWasInstallled();
// }, false);

window.addEventListener("beforeunload", function (e) {
    isOffline();
});

function init(){
    if(window.navigator.userAgent.indexOf("Windows") != -1){
        isWindowsOS = true;
        checkIfiSketchClientWasInstallled();
    } else {
        isWindowsOS = false;
        showOnlyWindows();
    }
}