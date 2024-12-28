#automount shared drive

# exit 1 #This script is not prod ready
LABEL="Shared"
MOUNT_POINT="/mnt/shared"
FSTAB="/etc/fstab"

if [ ! -d "$MOUNT_POINT" ]; then
    sudo mkdir -p "$MOUNT_POINT"
fi

DEVICE=$(sudo blkid -L "$LABEL")

if [ -z "$DEVICE" ]; then
    LABEL="shared"
    DEVICE=$(sudo blkid -L "$LABEL")
    if [ -z "$DEVICE" ]; then
        echo "No device found."
        exit 1
    fi
fi

sudo cp $FSTAB ${FSTAB}.backup.$(date +%Y%m%d%H%M%S)
if ! grep -qs "$DEVICE" "$FSTAB" && ! grep -qs "LABEL=$LABEL" "$FSTAB"; then
    echo "LABEL=$LABEL $MOUNT_POINT auto defaults 0 0" | sudo tee -a $FSTAB

    echo "Entry added to $FSTAB. You can now mount it with 'sudo mount -a'."
else
    echo "The device is already in $FSTAB."
fi
sudo mount -a
