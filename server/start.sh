#!/bin/bash
cd server/bedrock

source ../config/server.env

echo "op $OP" > commands.txt
echo "gamerule keepInventory $KEEP_INVENTORY" >> commands.txt
echo "gamerule doFireTick $FIRE_SPREAD" >> commands.txt
echo "gamerule tntExplodes $TNT" >> commands.txt

../playit/playit &

./bedrock_server < commands.txt
