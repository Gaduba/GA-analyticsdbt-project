SELECT id as order_id,
 json_value(json_extract(json_extract(extract_, '$'), '$.brand.name')) as brand_name,
 json_value(json_extract(json_extract(extract_,'$'), "$.meals[0].name")) as meal_name,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[1].name")) as add_on_1,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[2].name")) as add_on_2,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[3].name")) as add_on_3,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[4].name")) as add_on_4,
json_value(json_extract(json_extract(extract_,'$'), "$.meals[5].name")) as add_on_5,
total_amount as order_total_amount
from {{source('test','order_test')}}, unnest(json_extract_array(meals,'$')) as extract_