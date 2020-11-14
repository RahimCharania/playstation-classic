## insert 32 gb sandisk cruzer

##assuming disk name is sdb

parted --script /dev/sdb \
  rm 1 \
  mklabel msdos \
  mkpart primary 0 100% 
  
mkfs.vfat -L "SONY" /dev/sdb1 -f

unzip Project_Eris-v1.0.0-fb9d576.zip -d /run/media/$USER/SONY/

## once done unplug the usb drive and plug into the psclassic in controler 2 slot

## Plug a wallcharger micro usb charger with a good Amperageto your ps classic and boot up

## let it do it's thing for a few mins you''ll see the ps classic light flash on off.

## once done unplug the usb drive and put it back in your computer and backup the contents, preferably save it to the cloud

## recopy the stuff to the drive

parted --script /dev/sdb \
  rm 1 \
  mklabel msdos \
  mkpart primary 0 100% 
  
mkfs.ntfs -L "SONY" /dev/sdb1 -f

## if you have your games ready do the following:

mkdir /run/media/$USER/SONY/transfer

cp $GAMES /run/media/$USER/SONY/transfer

## $GAMES ==> .bin and .cue files, no need to save cover images project eris takes care of the rest.
## https://www.consoleroms.com/
# Enjoy!
