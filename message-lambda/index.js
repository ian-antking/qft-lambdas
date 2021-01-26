const fetch = require('node-fetch')

exports.handler = async (event, context) => {
    const response = await fetch(process.env.SLACK_ENDPOINT, {
        method: 'POST',
        body: event.body
    })
    const body = await response.json()
    context.succeed(JSON.stringify(body));
}
