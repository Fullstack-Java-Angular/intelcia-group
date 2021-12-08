--role
CREATE TABLE "role" (
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
);

--addresse
CREATE TABLE addresse (
    _numero SERIAL PRIMARY KEY,
    code_postal varchar(255),
    ville varchar(255),
    pays varchar(255)
);

--division
CREATE TABLE division(
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
    CA double precision,
    addresse SERIAL REFERENCES addresse(_numero),
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
    "role" SERIAL REFERENCES role(_numero),
    addresse SERIAL REFERENCES addresse(_numero),
    pole_competence_id SERIAL NOT NULL REFERENCES pole_competence(_numero),
    division_id SERIAL NOT NULL REFERENCES division(_numero)
);

--Chef
CREATE TABLE Chef (
    salaries_id bigint NOT NULL REFERENCES salarie(_matricule),
) INHERITS (salarie);

--IT
CREATE TABLE IT (
    -- Columns
) INHERITS (salarie);
--IT
CREATE TABLE RH (
    -- Columns
) INHERITS (salarie);

--materiel
CREATE TABLE materiel(
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
    m_type varchar(255),
    reference_constructeur varchar(255),
    contient SERIAL REFERENCES materiel(_numero),
    salarie_matricule bigint REFERENCES salarie(_matricule)
);
--tache
CREATE TABLE tache(
    _numero SERIAL PRIMARY KEY,
    nom varchar(255),
    cout double precision
);
--salarie_tache
CREATE TABLE salarie_tache(
    salarie_matricule bigint NOT NULL REFERENCES  salarie(_matricule),
    tache_numero SERIAL NOT NULL REFERENCES tache(_numero),
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
    d_fin date

);
--client
CREATE TABLE client(
    _numero SERIAL PRIMARY KEY,
    activite varchar(255),
    addresse SERIAL REFERENCES addresse(_numero),
    nom varchar(255),
    fonction varchar(255),
    email varchar(255),
    telephone varchar(255),
    fax varchar(255)
);
--client_projet
CREATE TABLE client_projet(
    client_numero SERIAL NOT NULL REFERENCES client(_numero),
    projet_numero SERIAL NOT NULL REFERENCES projet(_numero),
    PRIMARY KEY (client_numero,projet_numero),
     date_echeance date
);