// version.js

import fs from 'fs/promises';

const version = await fs.readFile('package.json', 'utf8')
    .then( data => JSON.parse(data).version )
    .catch( err => {
        console.error('Error reading package.json:', err);
        return 'unknown'
    })

export default function (request, reply) {
    reply.send({ version })
}