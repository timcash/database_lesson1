const { PSDB } = require('planetscale-node')
const conn = new PSDB('main')

async function main() {
    try {
        const [rows, fields] = await conn.query('select * from events')
        console.log(rows, fields)
    } catch (err) {
        console.log(err)
    }
}

main()