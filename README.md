# ANotherOldRobloxRevivalLol Source

Ok so basically this is like not cleaned at all, all paths can be found in `.htaccess` so have a look in there to see whats what.

Assets NEED to be uploaded manually, you do NOT use ids for the assets they are all using the versioning system.

Thankfully, you don't need to worry about that. The schema file includes the assets along with `assets.7z`

Also about assets here's a general structure you need for this

```
ANORRL/
   - assets/
      - thumbs/
   - site/      <- this repo basically
```

You need to have the assets folder and the thumbs folder within created and accessible by the webserver (or it can't write to it)

All other things like client and studio and database schema are in the `!CHECKOUT/` folder.

Generate a PrivateKey.pem using RBXSIGTOOLS.

Settings (for database connections and RCC Rendering) are in `core/settings.env`

Giving yourself admin via the database uses the profilebadges table (example provided in the schema)

Also the domain used in the clients is EXPLICITLY `arl.lambda.cam`, no other shit like www or whatever just arl (so update that when you can or just repatch from stock)

### Why does this exist?

I burnt out and I'm genuinely done with making this type of stuff anymore.

So I thought maybe someone else could do some use with this.
