fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'purge-core'
description 'Core Purge controller: blackout, sirens, reward multiplier, events.'
author 'You & ChatGPT'
version '1.0.0'

shared_scripts {
    
}

server_scripts {
    'server.lua'
}

client_scripts {
    'client.lua'
}

dependency '/assetpacks'