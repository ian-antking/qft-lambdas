const fetch = require('node-fetch')

exports.handler = async (event, context) => {
    const eventBody = JSON.parse(event.body)
    const response = await fetch(process.env.SLACK_MESSAGE_ENDPOINT, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(eventBody)
    })
    const responseBody = await response.json()
    context.succeed(responseBody);
}
