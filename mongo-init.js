db.createUser(
    {
        user: "mehdi",
        pwd: "mehdipassword123",
        roles: [
            {
                role: "readWrite",
                db: "exam"
            }
        ]
    }
)
