import * as keys from 'keys.js';

const client = filestack.init(keys.filePickerApi);
client.picker().open();