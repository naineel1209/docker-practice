const pg =  require('pg');

const client = new pg.Client({
    user: 'postgres',
    password: '123456',
    host: 'host.docker.internal',
    port: 5432,
    database: 'postgres'
});

async function starter() {
    let client2;
    try{
        await client.connect();

        async function createDb() {
            try {
                return await client.query('CREATE DATABASE dumb_db');
            } catch (err) {
                console.log(err.message);
            } finally {
                await client.end();
            }
        }

        await createDb();

         client2 = new pg.Client({
            user: 'postgres',
            password: '123456',
            host: 'host.docker.internal',
            port: 5432,
            database: 'dumb-db'
        });

        await client2.connect();

        const res = await client2.query('CREATE TABLE IF NOT EXISTS users (id SERIAL PRIMARY KEY, name VARCHAR(100), email VARCHAR(100))');

        console.log(res.rows);

        const res2 = await client2.query('INSERT INTO users (name, email)\n' +
            'VALUES ($1, $2)\n' +
            // 'ON CONFLICT (email)\n' +
            // 'DO UPDATE SET name = excluded.name, email = excluded.email\n' +
            'RETURNING *;\n', ['John Doe', 'johndoe@gmail.com']);

        console.log(res2.rows);

    }catch (e) {
        console.log('outer error')
        console.log(e)
    }finally{
        await client2.end();
    }
}

starter().then(r => console.log('done')).catch(e => console.log('error', e));
