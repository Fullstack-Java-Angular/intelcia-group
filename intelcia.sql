--division 
CREATE TABLE division(
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
    CA double precision,
    ville varchar(255),
    pays varchar(255)
);
-- pole competence
CREATE TABLE pole_competence(
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
    nb_salarie integer
);
--salarié
CREATE TABLE salarie(
    _matricule bigint PRIMARY KEY,
    prenom varchar(255),
    nom varchar(255),
    salaire integer,
    comission double precision,
    ville var(255),
    code_postal varchar(255),
    pays varchar(255),
    pole_competence_id REFERENCES pole_competence(_numero),
    division_id REFERENCES division(_numero)
); 

--materiel

--tache

--salarie_tache

--projet 

--client

--client_projet 