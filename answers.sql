SELECT * 
    FROM public.customers 
        WHERE 
            country='Germany'

UPDATE public.customers SET country='United Kingdom' 
    WHERE country='UK'

DELETE FROM public.customers 
    WHERE fax ISNULL

INSERT 
	INTO public.customers (customer_id,company_name,contact_name) 
VALUES
	('1','PcTech','Roberto Scioni'),
	('2','Totally','not'),
	('3','a','pyramid'),
	('4','scheme','we'),
	('5','are','a trapezoid'),
	('6','thats totally','legal')

SELECT *
	FROM public.customers
        WHERE contact_title='Sales Representative'

UPDATE public.customers SET company_name='Linkedin'
    WHERE customer_id='BOTTM'

SELECT *
	FROM public.customers
WHERE
	region ISNULL AND country='USA'

DELETE FROM public.customers 
    WHERE postal_code='1734'

SELECT *
	FROM public.customers
        WHERE contact_title='Owner'

SELECT company_name,contact_name,contact_title
	FROM public.customers
WHERE
	country='Brazil'

SELECT contact_name AS name,contact_title AS title
	FROM public.customers
        WHERE country='Finland'

DELETE FROM public.customers
    WHERE city='Lyon'

UPDATE public.customers
	SET region='Unknow'
	    WHERE region ISNULL

CREATE TABLE public.articles
(
    headline varchar(255) ,
    "subHead" varchar(255) ,
    content varchar(255) ,
    cover varchar(255) ,
    id SERIAL,
    CONSTRAINT articles_pkey PRIMARY KEY (id)
)

CREATE TABLE public.authors
(
    name varchar(255) ,
    img varchar(255) ,
    CONSTRAINT authors_pkey PRIMARY KEY (name)
)

CREATE TABLE public.reviews
(
    txt varchar(255) ,
    usr varchar(255) ,
    id SERIAL,
    CONSTRAINT reviews_pkey PRIMARY KEY (id)
)