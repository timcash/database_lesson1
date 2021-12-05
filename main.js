const { PSDB } = require('planetscale-node')
const conn = new PSDB('main')

async function main() {
    try {
        const [rows, fields] = await conn.query('select * from events')
        console.log(rows)
    } catch (err) {
        console.log(err)
    }
}

main()