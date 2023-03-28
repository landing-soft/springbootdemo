CREATE TABLE IF NOT EXISTS public.contact_info(
    id bigint NOT NULL,
    achternaam character varying(255) COLLATE pg_catalog."default",
    email character varying(255) COLLATE pg_catalog."default",
    voornaam character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT contact_info_pkey PRIMARY KEY (id)
)

INSERT INTO Contact_Info(id,voornaam,achternaam,email) VALUES (1,'Jamie','Spekman','landingsoft@hotmail.com');
INSERT INTO Contact_Info(id,voornaam,achternaam,email) VALUES (2,'Dwayne','Johnson','theRock@hollywood.com');
