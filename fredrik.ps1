$data1 = '{
    "data":[
    {"name":"bob","age":10},
    {"name":"sara","age":45},
    {"name":"foo","age":46}
    ]
    }'

    $data = $data1 | ConvertFrom-Json
    $data.GetType()
    $data.data

    
   $data2 =  '{
    "data":[
    {"name":"foo","age":45},
    {"name":"bar","age":30}
    ]
    }'

    $data4 += $data2 | ConvertFrom-Json

    $lookingFor = 30
    $lookingIn = "age"

