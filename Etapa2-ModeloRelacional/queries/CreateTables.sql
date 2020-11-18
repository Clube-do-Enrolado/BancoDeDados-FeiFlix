CREATE TABLE public.usuario (
    id_usuario integer NOT NULL unique,
    email varchar(50) NOT NULL,
    senha varchar(25) NOT NULL,
    plano varchar(50) NOT NULL,
    PRIMARY KEY (id_usuario),
	unique (id_usuario)
);

CREATE TABLE public.perfil (
    id_perfil integer NOT NULL unique,
    id_usuario integer NOT NULL,
    nome varchar(50) NOT NULL,
    url_foto varchar(50) NOT NULL,
    restricao_genero varchar(10000) NOT NULL,
    genero_interesse varchar(10000) NOT NULL,
    PRIMARY KEY (id_perfil),
	unique (id_perfil)
);

CREATE INDEX ON public.perfil
    (id_usuario);


CREATE TABLE public.prod_audiovisual (
    id_producao integer NOT NULL unique,
    data_lancamento date NOT NULL,
    duracao integer NOT NULL,
    titulo varchar(100) NOT NULL,
    nota_imdb decimal NOT NULL,
    tipo varchar NOT NULL,
    PRIMARY KEY (id_producao), 
	unique (id_producao)
);

CREATE TABLE public.perfil_prod (
    id_producao integer NOT NULL,
    id_perfil integer NOT NULL,
    ult_acesso timestamp with time zone NOT NULL
);

CREATE INDEX ON public.perfil_prod
    (id_producao);
CREATE INDEX ON public.perfil_prod
    (id_perfil);


CREATE TABLE public.serie (
    id_producao integer NOT NULL,
    genero varchar(100) NOT NULL,
    temporadas varchar(10) NOT NULL
);

CREATE INDEX ON public.serie
    (id_producao);


CREATE TABLE public.filme (
    id_producao integer NOT NULL,
    genero varchar(100) NOT NULL
);

CREATE INDEX ON public.filme
    (id_producao);


CREATE TABLE public.documentario (
    id_producao integer NOT NULL,
    tema varchar(100) NOT NULL,
    temporadas varchar(10) NOT NULL
);

CREATE INDEX ON public.documentario
    (id_producao);


CREATE TABLE public.roteirista (
    id_roteirista integer NOT NULL unique,
    nome varchar(100) NOT NULL,
    idade varchar(5) NOT NULL,
    genero_espec varchar(100) NOT NULL,
    PRIMARY KEY (id_roteirista),
	unique(id_roteirista)
);


CREATE TABLE public.ator (
    id_ator integer NOT NULL unique,
    nome varchar(100) NOT NULL,
    nota_imdb_ator decimal NOT NULL,
    idade varchar(5) NOT NULL,
    PRIMARY KEY (id_ator),
	unique(id_ator)
);


CREATE TABLE public.diretor (
    id_diretor integer NOT NULL unique,
    nome varchar(100) NOT NULL,
    idade varchar(100) NOT NULL,
    principal_obra varchar(100) NOT NULL,
    PRIMARY KEY (id_diretor),
	unique(id_diretor)
);

CREATE TABLE public.produtora (
    cnpj varchar(15) NOT NULL unique,
    nome varchar(100) NOT NULL,
    numero varchar(10) NOT NULL,
    rua varchar(100) NOT NULL,
    cep varchar(20) NOT NULL,
    cidade varchar(100) NOT NULL,
    estado varchar(100) NOT NULL,
    uf varchar(100) NOT NULL,
    PRIMARY KEY (cnpj),
	unique(cnpj)
);


CREATE TABLE public.prod_audio_produtora (
    id_producao integer NOT NULL,
    cnpj varchar(15) NOT NULL
);

CREATE INDEX ON public.prod_audio_produtora
    (id_producao);
CREATE INDEX ON public.prod_audio_produtora
    (cnpj);


CREATE TABLE public.prod_audio_roteirista (
    id_producao integer NOT NULL,
    id_roteirista integer NOT NULL
);

CREATE INDEX ON public.prod_audio_roteirista
    (id_producao);
CREATE INDEX ON public.prod_audio_roteirista
    (id_roteirista);


CREATE TABLE public.prod_audio_ator (
    id_producao integer NOT NULL,
    id_ator integer NOT NULL
);

CREATE INDEX ON public.prod_audio_ator
    (id_producao);
CREATE INDEX ON public.prod_audio_ator
    (id_ator);


CREATE TABLE public.prod_audio_diretor (
    id_producao integer NOT NULL,
    id_diretor integer NOT NULL
);

CREATE INDEX ON public.prod_audio_diretor
    (id_producao);
CREATE INDEX ON public.prod_audio_diretor
    (id_diretor);


ALTER TABLE public.perfil ADD CONSTRAINT FK_perfil__id_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
ALTER TABLE public.perfil_prod ADD CONSTRAINT FK_perfil_prod__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.perfil_prod ADD CONSTRAINT FK_perfil_prod__id_perfil FOREIGN KEY (id_perfil) REFERENCES public.perfil(id_perfil);
ALTER TABLE public.serie ADD CONSTRAINT FK_serie__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.filme ADD CONSTRAINT FK_filme__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.documentario ADD CONSTRAINT FK_documentario__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.prod_audio_produtora ADD CONSTRAINT FK_prod_audio_produtora__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.prod_audio_produtora ADD CONSTRAINT FK_prod_audio_produtora__cnpj FOREIGN KEY (cnpj) REFERENCES public.produtora(cnpj);
ALTER TABLE public.prod_audio_roteirista ADD CONSTRAINT FK_prod_audio_roteirista__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.prod_audio_roteirista ADD CONSTRAINT FK_prod_audio_roteirista__id_roteirista FOREIGN KEY (id_roteirista) REFERENCES public.roteirista(id_roteirista);
ALTER TABLE public.prod_audio_ator ADD CONSTRAINT FK_prod_audio_ator__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.prod_audio_ator ADD CONSTRAINT FK_prod_audio_ator__id_ator FOREIGN KEY (id_ator) REFERENCES public.ator(id_ator);
ALTER TABLE public.prod_audio_diretor ADD CONSTRAINT FK_prod_audio_diretor__id_producao FOREIGN KEY (id_producao) REFERENCES public.prod_audiovisual(id_producao);
ALTER TABLE public.prod_audio_diretor ADD CONSTRAINT FK_prod_audio_diretor__id_diretor FOREIGN KEY (id_diretor) REFERENCES public.diretor(id_diretor);