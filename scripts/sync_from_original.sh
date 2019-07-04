#!/usr/bin/env bash
cp -R ../talk_meter/lib/* lib/
for FILE in $(find lib -name "*.dart"); do
        echo $FILE
        sed -i '' "s/import 'package:flutter\/material\.dart';/import 'package:flutter_web\/material.dart';/g" $FILE
done
