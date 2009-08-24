#!/bin/sh
# TODO: - Argumente von Kommandozeile fuer Machine und Dienste

MACHINE_NAME="Server"

# SSH
SERVICE="SSH" 
PROTOCOL="TCP"
GUEST_PORT="22"
HOST_PORT="22004"

echo "Setting ${SERVICE} (${PROTOCOL}):"
echo "  GuestPort: ${GUEST_PORT}"
echo "  HostPort:  ${HOST_PORT}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/Protocol" "${PROTOCOL}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/GuestPort" "${GUEST_PORT}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/HostPort" "${HOST_PORT}"
echo "Done."
echo ""


# HTTP
SERVICE="HTTP" 
PROTOCOL="TCP"
GUEST_PORT="80"
HOST_PORT="8000"

echo "Setting ${SERVICE} (${PROTOCOL}):"
echo "  GuestPort: ${GUEST_PORT}"
echo "  HostPort:  ${HOST_PORT}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/Protocol" "${PROTOCOL}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/GuestPort" "${GUEST_PORT}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/HostPort" "${HOST_PORT}"
echo "Done."
echo ""


# BitTorrent 
SERVICE="BitTorrent" 
PROTOCOL="TCP"
GUEST_PORT="6969"
HOST_PORT="6969"

echo "Setting ${SERVICE} (${PROTOCOL}):"
echo "  GuestPort: ${GUEST_PORT}"
echo "  HostPort:  ${HOST_PORT}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/Protocol" "${PROTOCOL}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/GuestPort" "${GUEST_PORT}"
VBoxManage setextradata "${MACHINE_NAME}" "VBoxInternal/Devices/pcnet/0/LUN#0/Config/${SERVICE}/HostPort" "${HOST_PORT}"
echo "Done."
echo ""

