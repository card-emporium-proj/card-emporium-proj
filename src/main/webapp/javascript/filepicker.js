import * as keys from './keys.js';

console.log("inside filepicker.js");

window.addEventListener('DOMContentLoaded', function(){
    console.log("dom content loaded");
    const client = filestack.init(keys.filePickerApi);
    const picker = client.picker();

    const openButton = document.getElementById('open');
    openButton.addEventListener('click', (e) => {
        console.log("add picture clicked");
        e.preventDefault();
        picker.open();
    });
})
