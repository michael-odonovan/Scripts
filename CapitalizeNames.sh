#!/bin/bash

rename 's/(^|[\s_-])([a-z])/$1\u$2/g' *

rename "s/[-_ ]//g" *

