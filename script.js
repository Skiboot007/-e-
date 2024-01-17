fetch("https://webhook.site/2a11f2cc-d2a4-4495-8fb8-527226721def", {
    method: "POST",
    body: JSON.stringify({
        userId: 1,
        title: "Fix my bugs",
        completed: false
    }),
    headers: {
        "Content-type": "application/json; charset=UTF-8"
    }
});
