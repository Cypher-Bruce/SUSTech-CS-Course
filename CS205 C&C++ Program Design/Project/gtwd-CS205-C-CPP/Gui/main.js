const {app, BrowserWindow, ipcMain} = require('electron/main')
const path = require('node:path')
const cmd = require('node-cmd')

let win = null

function getOSString() {
    if (process.platform === 'darwin') {
        return 'mac'
    } else if (process.platform === 'win32') {
        return 'win'
    } else if (process.platform === 'linux') {
        return 'linux'
    }
}

function createWindow() {
    win = new BrowserWindow({
        width: 750,
        height: 750,
        webPreferences: {
            nodeIntegration: true,
            contextIsolation: false,
            enableRemoteModule: true
        }
    })

    win.loadFile('index.html')
}

app.whenReady().then(() => {
    createWindow()

    app.on('activate', () => {
        if (BrowserWindow.getAllWindows().length === 0) {
            createWindow()
        }
    })
})

ipcMain.on('exec', (event, arg) => {
    console.log('arg', arg);
    let url;
    if (getOSString() === 'mac') {
        url = `./exec/mac/gtwd -m ${arg.mode} -i "${arg.input}"`;
    } else {
        url = `.\\exec\\win\\gtwd -m ${arg.mode} -i "${arg.input}"`;
    }
    if (arg.mode !== "fm") {
        url += ` -o "${arg.output}"`;
    }
    if (arg.mode === "fe") {//flac meta edit
        url += ` -${arg.alter} "${arg.first}"`;
        if (arg.second.toString() !== "") {
            url += ` "${arg.second}"`;
        }
    }
    if (arg.flacMeta !== undefined) {
        if (arg.flacMeta !== "") {
            url += ` -ac "${arg.flacMeta}"`
        }
    }
    if (arg.tmpFolder !== undefined) {
        if (arg.tmpFolder !== "") {
            url += ` -t "${arg.tmpFolder}"`
        }
    }
    if (arg.rawConfig !== undefined) {
        console.log('rawConfig', arg.rawConfig)
        if (arg.rawConfig !== "") {
            url += ` -c "${arg.rawConfig}"`
        }
    }
    if (arg.wavVelo !== undefined) {
        if (arg.wavVelo !== "") {
            url += ` -v "${arg.wavVelo}"`
        }
    }
    console.log('url', url);
    cmd.run(
        url,
        (err, data, stderr) => {
            if (err) {
                console.error('stderr', stderr)
                throw err
            }
            console.log('data', data)
            win.webContents.send('exec-reply', {mode: arg.mode, result: data})
        }
    )
})

app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit()
    }
})