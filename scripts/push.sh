curl \
-H "Content-type: application/json" \
-H "Authorization:key=AAAAuHewutc:APA91bGMfxx9wR7TmwOekJIFaPRnlvAn2geejGvrdZwR6yr7svk9R-RgiTPJv9H5k6VYzHtAPbDpwi99it-nJi7U-I4l54Oy0i607LRaQxlDGUoCxgwyGVSkJ2fyoQra7E30HQsZcTI0" \
-X POST \
-d '{ 
    "to" : "cLIWeJEZRIe7ccSrRlK7pe:APA91bGunxpbfn5tPdZqWQ1wN5B7uI7LpMTEh2pMfrm6mDWDyAy7RZAvqvGNZpkXuHhqkq53rji-AthAZxoeXAiM8X1SoGPzTKb6T6iqh0jqozNXo5OzVy9nhGvLG_DW6k4VxgnWxJdV"
    "notification":{ 
      "title":"Hello", 
      "body":"This is a text message!" 
    } 
    "data": {
        "type": "city",
        "cityName": "London",
    }, 
    }' \
https://fcm.googleapis.com/fcm/send