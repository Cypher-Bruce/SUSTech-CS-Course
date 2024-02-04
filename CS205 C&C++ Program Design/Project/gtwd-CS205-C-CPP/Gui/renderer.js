const {ipcRenderer} = require('electron');

const splitter = process.platform === 'win32' ? '\\' : '/';

// flac meta
document.getElementById("flac-meta-submit").addEventListener("click", function () {
    let inFile = document.getElementById("flac-meta-input").files[0];
    console.log(inFile.path);
    ipcRenderer.send('exec', {mode: 'fm', input: inFile.path});
});

// flac meta edit
document.getElementById("flac-meta-edit-second").style.display = "none";
let mode = "";
document.getElementById("alter-method-menu").addEventListener("click", function (e) {
    if (e.target.innerText === "Modify vender") {
        mode = "mv";
        document.getElementById("flac-meta-edit-first").placeholder = "Please input a valid vender";
        document.getElementById("flac-meta-edit-second").style.display = "none";
    } else if (e.target.innerText === "Modify comment") {
        mode = "mc";
        document.getElementById("flac-meta-edit-first").placeholder = "Please input a valid comment";
        document.getElementById("flac-meta-edit-second").style.display = "initial";
        document.getElementById("flac-meta-edit-second").placeholder = "Please input a valid index";
    } else if (e.target.innerText === "Append comment") {
        mode = "ac";
        document.getElementById("flac-meta-edit-first").placeholder = "Please input a valid comment, use \";\" to split multiple comments";
        document.getElementById("flac-meta-edit-second").style.display = "none";
    } else if (e.target.innerText === "Remove comment") {
        mode = "rc";
        document.getElementById("flac-meta-edit-first").placeholder = "Please input a valid index";
        document.getElementById("flac-meta-edit-second").style.display = "none";
    }
    document.getElementById("alter-method").firstElementChild.innerText = e.target.innerText;
});
document.getElementById("flac-meta-edit-submit").addEventListener("click", function () {
    if (mode === "")
        alert("Please select a mode first!");
    let inFile = document.getElementById("flac-meta-edit-input").files[0].path.toString();
    const fileName = inFile.substring(inFile.lastIndexOf(splitter) + 1);
    let outDir = document.getElementById("flac-meta-edit-output").value;
    if (outDir === "")
        outDir = inFile.substring(0, inFile.lastIndexOf(splitter));
    if (outDir[outDir.length - 1] !== splitter)
        outDir += splitter;
    outDir += "output_" + fileName.toString();
    ipcRenderer.send('exec', {
        mode: 'fe',
        input: inFile,
        output: outDir,
        alter: mode,
        first: document.getElementById("flac-meta-edit-first").value,
        second: document.getElementById("flac-meta-edit-second").value
    });
});

// convertor
let into = "";
document.getElementById("conv-flac-meta").style.display = "none";
document.getElementById("conv-raw-config").style.display = "none";
document.getElementById("conv-wav-velo").style.display = "none";
document.getElementById("conv-menu").addEventListener("click", function (e) {
    document.getElementById("conv-set").firstElementChild.innerText = e.target.innerText;
    into = e.target.innerText.toLowerCase();
    if (into === "flac") {
        document.getElementById("conv-flac-meta").style.display = "initial";
    } else {
        document.getElementById("conv-flac-meta").style.display = "none";
    }
    let inFile = document.getElementById("conv-input").files[0].path.toString();
    if (inFile.toLowerCase().lastIndexOf('wav') !== -1 && into === "flac") {
        document.getElementById("conv-wav-velo").style.display = "initial";
    } else {
        document.getElementById("conv-wav-velo").style.display = "none";
    }
});

document.getElementById("conv-input").addEventListener("change", function (e) {
    let inFile = document.getElementById("conv-input").files[0].path.toString();
    if (inFile.toLowerCase().lastIndexOf('pcm') !== -1 || inFile.toLowerCase().lastIndexOf('raw') !== -1) {
        document.getElementById("conv-raw-config").style.display = "initial";
    } else {
        document.getElementById("conv-raw-config").style.display = "none";
    }
    if (inFile.toLowerCase().lastIndexOf('wav') !== -1 && document.getElementById("conv-set").firstElementChild.innerText === "flac") {
        document.getElementById("conv-wav-velo").style.display = "initial";
    } else {
        document.getElementById("conv-wav-velo").style.display = "none";
    }
});
document.getElementById("conv-submit").addEventListener("click", function (e) {
    let inFile = document.getElementById("conv-input").files[0].path.toString();
    const fileName = inFile.substring(inFile.lastIndexOf(splitter) + 1);
    const inType = fileName.substring(fileName.lastIndexOf('.') + 1);
    let outDir = document.getElementById("conv-output").value;
    if (outDir === "")
        outDir = inFile.substring(0, inFile.lastIndexOf(splitter));
    if (outDir[outDir.length - 1] !== splitter)
        outDir += splitter;
    outDir += "output_" + fileName.toString().replace(inType, into);
    if (inType === into) {
        alert("Please select a different type!");
        return;
    }
    if (inType[0] === undefined || into[0] === undefined) {
        alert("Please select a valid type!");
        return;
    }
    let modeText = (inType[0] === 'p' ? 'r' : inType[0]) + "2" + into[0];
    let flacMeta = document.getElementById("conv-flac-meta").value,
        tmpFolder = document.getElementById("conv-temp").value,
        rawConfig = document.getElementById("conv-raw-config").value,
        wavVelo = document.getElementById("conv-wav-velo").value;
    ipcRenderer.send('exec', {
        mode: modeText,
        input: inFile,
        output: outDir,
        flacMeta: flacMeta,
        tmpFolder: tmpFolder,
        rawConfig: rawConfig,
        wavVelo: wavVelo
    });
});

// all the results
ipcRenderer.on('exec-reply', (event, arg) => {
    if (arg.mode === 'fm') {
        document.getElementById("flac-meta-result").value = arg.result;
    } else if (arg.mode === 'fe') {
        document.getElementById("flac-meta-edit-result").value = arg.result;
    } else {
        document.getElementById("conv-result").value = arg.result;
    }
});