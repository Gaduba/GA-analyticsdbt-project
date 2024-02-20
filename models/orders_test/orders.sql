with orders_ as (select *
from {{source('test','order_test')}}),

final_ as (SELECT id as order_id,
total_amount as order_total_amount,
user_id,
created_at,
json_value(json_extract(json_extract(extract_, '$'), '$.brand.id')) as brand_id,
json_value(json_extract(json_extract(extract_, '$'), '$.brand.name')) as brand_name,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[0].id")) as meal_id,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[0].name")) as meal_name,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[1].name")) as add_on_1,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[2].name")) as add_on_2,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[3].name")) as add_on_3,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[4].name")) as add_on_4,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[5].name")) as add_on_5,
json_value(json_extract(json_extract(extract_,'$'), "$.amount")) as sub_total,
service_charge,
pickup,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[0].quantity")) as meal_quantity
FROM orders_, unnest(json_extract_array(meals,'$')) as extract_)

select *
from final_