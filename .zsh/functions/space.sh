function space {
    if [ "$1" = "off" ]; then
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sofaecke/decke_1/set" -m "{\"state\": \"OFF\"}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sofaecke/decke_2/set" -m "{\"state\": \"OFF\"}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sofaecke/decke_3/set" -m "{\"state\": \"OFF\"}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sitzecke/decke_1/set" -m "{\"state\": \"OFF\"}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/trinkregal/n_1/set" -m "{\"state\": \"OFF\"}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/trinkregal/n_2/set" -m "{\"state\": \"OFF\"}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektro_ecke/decke_1/set" -m "{\"state\": \"OFF\"}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektro_ecke/decke_2/set" -m "{\"state\": \"OFF\"}"
    else
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sofaecke/decke_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sofaecke/decke_2/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sofaecke/decke_3/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/sitzecke/decke_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/trinkregal/n_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/trinkregal/n_2/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektro_ecke/decke_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
        mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektro_ecke/decke_2/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    fi
}

function space_elektro {
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektro_ecke/decke_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektro_ecke/decke_2/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektro_ecke/decke_3/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
}
