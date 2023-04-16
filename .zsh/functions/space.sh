function space {
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/hofseite/decke_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/hofseite/decke_2/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/hofseite/decke_3/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektroecke/decke_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektroecke/decke_2/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/elektroecke/decke_3/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/mitte/decke_1/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/mitte/decke_2/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
    mosquitto_pub -h 192.168.3.145 -t "zigbee2mqtt/mitte/decke_3/set" -m "{\"state\": \"ON\", \"brightness\": $1}"
}
