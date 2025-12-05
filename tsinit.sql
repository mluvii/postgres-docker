do $$
begin
    create text search dictionary czech_ispell (template=ispell, dictfile = czech, afffile=czech, stopwords=czech);
    create text search configuration czech (copy=pg_catalog.english);
    alter text search configuration czech alter mapping for asciiword, asciihword, hword_asciipart, word, hword, hword_part with czech_ispell;
exception when unique_violation then null;
end;
$$;
