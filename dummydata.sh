#!/bin/bash
node -e "const now = new Date(); console.log('export const dummyData = [' + Array.from({length: 8}, (_, i) => { const date = new Date(Date.UTC(now.getUTCFullYear(), now.getUTCMonth(), now.getUTCDate(), 13 + i)); return '\"' + date.toISOString() + '\"'; }).join(', ') + '];')" >frontend/src/hooks/dummydata.ts
