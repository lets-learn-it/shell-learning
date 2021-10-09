# jq basics

jq is written in portable C, and it has zero runtime dependencies. jq can mangle the data format that you have into the one that you want with very little effort.

### Unchanged output

```sh
cat samples/01.json | jq .
```

### Get nth element in list

As you can see, data in `01.json` is list of json objects.

```sh
# access first element in list
cat samples/01.json | jq .[0]
```

### select only required fields

```sh
cat samples/01.json | jq '.[0] | { name: .name, age: .age}'

# you can get slice also
cat samples/01.json | jq '.[1:2] | { name: .name, age: .age}'
```

**Output**

```json
{
  "name": "Parikshit Patil",
  "age": 23
}
```

#### if you want to take name & age for whole list

```sh
cat samples/01.json | jq '.[] | { name: .name, age: .age}'
```

**Output**

```json
{
  "name": "Parikshit Patil",
  "age": 23
}
{
  "name": "XYZ ABC",
  "age": 25
}
```

#### if you want to take name & age for whole list (output is list)

```sh
cat samples/01.json | jq '[].[] | { name: .name, age: .age}]'
```

**Output**

```json
[
  {
    "name": "Parikshit Patil",
    "age": 23
  },
  {
    "name": "XYZ ABC",
    "age": 25
  }
]
```
