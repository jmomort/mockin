// version.js

const p = (await import('../package.json', {assert: {type: "json"}})).default

const version = p.version

export default function (request, reply) {
    reply.send({ version })
}