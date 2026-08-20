{% macro standardize_country(column_name) %}

    case
        when {{ column_name }} is null then 'Unknown'
        when lower(trim({{ column_name }})) = 'usa' then 'United States'
        when lower(trim({{ column_name }})) = 'uk' then 'United Kingdom'
        else trim({{ column_name }})
    end

{% endmacro %}