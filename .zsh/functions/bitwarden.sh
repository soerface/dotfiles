function unlock {
    export BW_SESSION=$(bw unlock --raw)
}

function user {
    bw get username $1 | clip
}

function pw {
    bw get password $1 | clip
}
