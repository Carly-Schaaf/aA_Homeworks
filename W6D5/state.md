# Sample State
---
```js
{
  entities: {
      users: {
          1: {
            id: 1,
            username: 'carly_ann',
            },
          2: {
            id: 2,
            username: 'nlw',
            }
          },
      listings: {
          1: {
            id: 1,
            title: "Bright, Central Apt. in Heart of Downtown Berkeley",
            description: "Renting out my apartment while I'm away for the summer The apartment is clean, has wood-flooring throughout, and is just a 10-minute walk to UC Berkeley.",
            location: "Berkeley, CA",
            price: 95,
            ownerId: 1
          }
        },
      bookings: {
          1: {
            id: 1,
            listingId: 1,
            guestId: 2,
            date: 8/01/2018 - 8/30/2018,
          }
        },
      reviews: {
          1: {
            id: 1,
            body: "Super clean. Carly was a fantastic host!",
            listingId: 1,
            guestId: 2,
          }
        },
      ui: {
         loading: true/false
        },
      errors: {
         login: ["Incorrect username/password combination"],
         listingForm: ["Listing title cannot be blank"],
        },
      session: { currentUserId: 1 }
}
```
