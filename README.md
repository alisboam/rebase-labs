# Rebase Labs

Uma app web para listagem de exames médicos.

## Tech Stack

* Docker
* Ruby
* Javascript
* HTML
* CSS

## Build the image

```shell
docker build -t app -f docker/Dockerfile .
```

## Running Application

To start Docker Compose:
```shell
docker-compose -f docker/docker-compose.yml up
```

### API sample request

```shell
curl http://localhost:3000/api/v1/exams
```

### API sample response

```json
[
   {
      "id": 51364,
      "name": "Antônio Rebouças",
      "cpf": "071.488.453-78",
      "email": "adalberto_grady@feil.org",
      "birthdate": "1999-04-11",
      "address": "25228 Travessa Ladislau",
      "city": "Tefé",
      "state": "Sergipe",
      "doctor_crm": "B0002W2RBG",
      "doctor_state": "SP",
      "doctor_name": "Dra. Isabelly Rêgo",
      "doctor_email": "diann_klein@schinner.org",
      "token": "AIWH8Y",
      "exam_date": "2021-06-29",
      "exam_name": "t4-livre",
      "exam_reference": "34-60",
      "result": 59,
      "created_at": "2023-01-01T23:05:41.866Z",
      "updated_at": "2023-01-01T23:05:41.866Z"
   },
   {
      "id": 51365,
      "name": "Antônio Rebouças",
      "cpf": "071.488.453-78",
      "email": "adalberto_grady@feil.org",
      "birthdate": "1999-04-11",
      "address": "25228 Travessa Ladislau",
      "city": "Tefé",
      "state": "Sergipe",
      "doctor_crm": "B0002W2RBG",
      "doctor_state": "SP",
      "doctor_name": "Dra. Isabelly Rêgo",
      "doctor_email": "diann_klein@schinner.org",
      "token": "AIWH8Y",
      "exam_date": "2021-06-29",
      "exam_name": "ácido úrico",
      "exam_reference": "15-61",
      "result": 43,
      "created_at": "2023-01-01T23:05:41.866Z",
      "updated_at": "2023-01-01T23:05:41.866Z"
   }
]
