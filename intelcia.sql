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
    pole_competence_id SERIAL NOT NULL REFERENCES pole_competence(_numero),
    division_id SERIAL REFERENCES division(_numero)
); 

--materiel
CREATE TABLE materiel(
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
    m_type varchar(255),
    reference_constructeur varchar(255),
    salarie_matricule bigint REFERENCES salarie(_matricule)
);
--tache
CREATE TABLE tache(
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
    cout double precision,
);
--salarie_tache
CREATE TABLE salarie_tache(
    salarie_matricule bigint REFERENCES NOT NULL salarie(_matricule),
    tache_numero SERIAL REFERENCES NOT NULL tache(_numero),
    d_debut date,
    d_fin date,
    PRIMARY KEY(salarie_matricule,tache_numero)
);

--projet 
CREATE TABLE projet(
    _numero SERIAL PRIMARY KEY,
    appellation varchar(255),
    theme varchar(255),
    d_debut date,
    d_fin date,

);
--client
CREATE TABLE client(
    _numero SERIAL PRIMARY KEY,
    activite varchar(255),
    ville varchar(255),
    code_postal varchar(255),
    pays varchar(255),
    nom varchar(255),
    fonction varchar(255),
    email varchar(255),
    telephone varchar(255),
    fax varchar(255)
);
--client_projet 
CREATE TABLE client_projet(
    client_numero SERIAL REFERENCES NOT NULL, client(_numero),
    projet_numero REFERENCES NOT NULL projet(_numero),
    date_echeance date,
    PRIMARY KEY (client_numero,projet_numero)
);