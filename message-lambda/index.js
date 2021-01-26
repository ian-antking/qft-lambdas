const fetch = require('node-fetch')

exports.handler = async (event, context) => {
    const response = await fetch(process.env.SLACK_MESSAGE_ENDPOINT, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: event.body
    })
    context.succeed(response);
}
