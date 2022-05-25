# Cart

## API

### HTTP

#### `GET /cart/total/<userid>`

Get total amount in users cart

```bash
curl --request GET \
  --url http://localhost:5000/cart/total/dan
```

```json
{
  "carttotal": 804.5,
  "userid": "dan"
}
```

#### `POST /cart/item/modify/<userid>`

Update an item in the cart of a user

```bash
curl --request POST \
  --url http://localhost:5000/cart/item/modify/dan \
  --header 'content-type: application/json' \
  --data '{"itemid":"sfsdsda3343", "quantity":2}'
```

To modify the item in a cart, the input needs to contain an `itemid` and the new `quantity`

```json
{"itemid":"sfsdsda3343", "quantity":2}
```

A successful update will return the userid

```json
{
  "userid": "dan"
}
```

#### `POST /cart/modify/<userid>`

Modify the contents of a cart

```bash
curl --request POST \
  --url http://localhost:5000/cart/modify/dan \
  --header 'content-type: application/json' \
  --data '{
  "cart": [
    {
      "description": "fitband for any age - even babies",
      "itemid": "sdfsdfsfs",
      "name": "fitband",
      "price": 4.5,
      "quantity": 1
    },
    {
      "description": "the most awesome redpants in the world",
      "itemid": "sfsdsda3343",
      "name": "redpant",
      "price": 400,
      "quantity": 1
    }
  ],
  "userid": "dan"
}'
```

To replace the entire cart, or create a new cart for a user, send a cart object

```json
{
  "cart": [
    {
      "description": "fitband for any age - even babies",
      "itemid": "sdfsdfsfs",
      "name": "fitband",
      "price": 4.5,
      "quantity": 1
    }
  ],
  "userid": "dan"
}
```

A successful update will return the userid

```json
{
  "userid": "dan"
}
```

#### `POST /cart/item/add/<userid>`

Add item to cart

```bash
curl --request POST \
  --url http://localhost:5000/cart/item/add/shri \
  --header 'content-type: application/json' \
  --data '{"itemid":"xyz", "quantity":3}'
```

To add the item in a cart, the input needs to contain an `itemid` and the `quantity`

```json
{"itemid":"xyz", "quantity":3}
```

A successful update will return the userid

```json
{
  "userid": "shri"
}
```

#### `GET /cart/items/total/<userid>`

Get the total number of items in a cart

```bash
curl --request GET \
  --url http://localhost:5000/cart/items/total/shri
```

```json
{
  "cartitemtotal": 5.0,
  "userid": "shri"
}
```

#### `GET /cart/clear/<userid>`

Clear all items from the cart

```bash
curl --request GET \
  --url http://localhost:5000/cart/clear/dan
```

```text
<no payload returned>
```

#### `GET /cart/items/<userid>`

Get all items in a cart

```bash
curl --request GET \
  --url http://localhost:5000/cart/items/dan
```

```json
{
  "cart": [
    {
      "description": "fitband for any age - even babies",
      "itemid": "sdfsdfsfs",
      "name": "fitband",
      "price": 4.5,
      "quantity": 1
    },
    {
      "description": "the most awesome redpants in the world",
      "itemid": "sfsdsda3343",
      "name": "redpant",
      "price": 400,
      "quantity": 1
    }
  ],
  "userid": "dan"
}
```

#### `GET /cart/all`

Get all the carts

```bash
curl --request GET \
  --url http://localhost:5000/cart/all
```

```json
{
  "all carts": [
    {
      "cart": [
        {
          "description": "fitband for any age - even babies",
          "itemid": "sdfsdfsfs",
          "name": "fitband",
          "price": 4.5,
          "quantity": 1
        },
        {
          "description": "the most awesome redpants in the world",
          "itemid": "sfsdsda3343",
          "name": "redpant",
          "price": 400,
          "quantity": 1
        }
      ],
      "id": "shri"
    }
  ]
}
```

