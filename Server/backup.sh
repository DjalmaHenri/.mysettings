#!/bin/sh
#Backup

chmod 777 /home/djalma/data

sudo mount /dev/sdb1 /mnt

rsync -rvP /home/djalma/data media /mnt

chmod 750 /home/djalma/data

sudo umount /dev/sdb1
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                                                        
~                                                                           
