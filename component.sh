#!/bin/bash

cat > $1.tsx << EOF
import styles from './$1.module.css';
EOF

cat > $1.module.css << EOF
/* placeholder */
EOF

nvim $1.tsx



