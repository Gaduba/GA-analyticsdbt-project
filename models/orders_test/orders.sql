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
json_value(json_extract(json_extract(extract_,'$'), "$.meals[0].quantity")) as meal_quantity,
json_value(json_extract(json_extract(extract_,'$'), "$.amount")) as sub_total,
json_extract_scalar(address_details,'$.city') as city,
json_extract_scalar(address_details,'$.phone_number') as user_phone_number,
json_extract_scalar(address_details,'$.address_line') as address,
service_charge,
delivery_fee,
pickup
FROM orders_, unnest(json_extract_array(meals,'$')) as extract_)

select *
from final_