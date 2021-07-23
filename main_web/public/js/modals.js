var moreInfo = document.getElementById('moreInfo');
var doesNotWork = document.getElementById('doesNotWork');


var infoModal = new bootstrap.Modal(document.getElementById('infoModal'), {
    keyboard: false
})

var notWorksModal = new bootstrap.Modal(document.getElementById('notWorksModal'), {
    keyboard: false
})

moreInfo.addEventListener('click', function(event){
    event.preventDefault();
    infoModal.show()
});

doesNotWork.addEventListener('click', function(event){
    event.preventDefault();
    notWorksModal.show()
});
