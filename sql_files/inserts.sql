
--Inserção Assinaturas
INSERT INTO Assinatura (id_plano, nome, beneficios, valor, data_inicio, data_vencimento) VALUES
        (1, 'Standard', 'Todas musicas disponiveis', 0, '01-01-2023', '01-01-2024'),
        (2, 'Plus', 'Todas musicas e podcasts disponiveis', 5, '01-01-2023', '01-01-2024'),
        (3, 'Deluxe', 'Todas midias disponiveis e criacao de playlist', 15, '01-01-2023', '01-01-2024');

---- 
--Inserção Generos Musicais
INSERT INTO Genero (id_genero, nome) VALUES
        (1, 'Rock'),
        (2, 'Pop'),
        (3, 'Funk'),
        (4, 'Sertanejo'),
        (5, 'Pagode'),
        (6, 'Metal'),
        (8, 'Rap'),
        (9, 'Trap');

---- 
--Inserção Artistas
INSERT INTO Artista (id_artista, nome) VALUES 
        (1, 'Guns n Roses'),
        (2, 'AC/DC'),
        (3, 'Harry Styles'),
        (4, 'The Weeknd'),
        (5, 'Matuê'),
        (6, 'Chicãozinho e Xororó'),
        (7, 'Travis Scott'),
        (8, 'Katy Perry'),
        (9, 'Metallica'),
        (10, 'MC Kekel'),
        (11, 'Pixote'),
        (12, 'Marina Sena'),
        (13, 'Eminem'),
        (14, 'Pantera');

---- 
--Inserção Albuns
INSERT INTO Album (id_album, tipo, nome, ano, id_artista) VALUES
        (1, 'Disco', 'Appetite for Destruction', 1987, 1),
        (2, 'Disco', 'Back In Black', 1980, 2),
        (3, 'Disco', 'Harry`s House', 2022, 3),
        (4, 'Disco', 'After Hours', 2020, 4),
        (5, 'Single', 'Conexões de Máfia', 2023, 5),
        (6, 'Disco', 'Cowboy do Asfalto', 1990, 6),
        (7, 'Disco', 'Birds in the Trap Sing McKnight', 2016, 7),
        (8, 'Disco', 'Teenage Dream', 2010, 8),
        (9, 'Disco', 'Master of Puppets', 1986, 9),
        (10, 'Single', 'Namorar pra Quê?', 2016, 10),
        (11, 'Disco', 'Pixote no Estúdio Showlivre, Vol. 3', 2007, 11),
        (12, 'Single', 'Ombrim', 2023, 12),
        (13, 'Disco', 'The Marshall Mathers LP 2', 2013, 13),
        (14, 'Disco', 'Vulgar Display of Power', 1992, 14);

---- 
--Inserção Músicas
INSERT INTO Midia (id_midia, nome, duracao, qtd_streamings, data_lancamento) VALUES
        (1, 'Welcome To The Jungle', '04:34', 0, '01-10-1987'),
        (2, 'Paradise City', '06:46', 0, '30-11-1988'),
        (3, 'As It Was', '03:02', 0, '07-05-2021'),
        (4, 'Back in Black', '04:15', 0, '25-07-1980'),
        (5, 'Blinding Lights', '03:20', 0, '29-11-2019'),
        (6, 'Conexão de Máfia', '03:45', 0, '15-03-2020'),
        (7, 'Evidências', '04:39', 0, '01-10-1987'),
        (8, 'Goosebumps', '04:03', 0, '03-09-2016'),
        (9, 'Last Friday Night', '03:50', 0, '06-06-2011'),
        (10, 'Master of Puppets', '08:38', 0, '03-03-1986'),
        (11, 'Namorar Pra Quê', '02:49', 0, '18-01-2019'),
        (12, 'Nem de Graça', '02:48', 0, '15-11-2019'),
        (13, 'Ombrim', '03:00', 0, '05-06-2020'),
        (14, 'Rap God', '06:03', 0, '15-10-2013'),
        (15, 'Todo Mundo Vai Sofrer', '03:02', 0, '28-06-2019'),
        (16, 'Walk', '05:15', 0, '23-08-1994');
---- 
--Inserção Músicas
INSERT INTO Musica (id_midia, id_album, letra) VALUES
        (1, 1, 'Welcome to the jungle, we´ve got fun and games
                We got everything you want honey, we know the names
                We are the people that can find whatever you may need
                If you got the money, honey, we got your disease
                In the jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n knees, knees
                Mwah, I, I wanna watch you bleed
                Welcome to the jungle, we take it day by day
                If you want it you´re gonna bleed but it´s the price to pay
                And you´re a very sexy girl who´s very hard to please
                You can taste the bright lights but you won´t get there for free
                In the jungle, welcome to the jungle
                Feel my, my, my, my serpentine
                Ooh, ah, I want to hear you scream
                Welcome to the jungle, it gets worse here every day
                You learn to live like an animal in the jungle where we play
                If you got a hunger for what you see you´ll take it eventually
                You can have anything you want but you better not take it from me
                In the jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n-knees, knees
                Mwah, I´m gonna watch you bleed
                And when you´re high, you never ever wanna come down
                So down, so down, so down, yeah
                You know where you are?
                You re in the jungle, baby, you re gonna die
                In the jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n-knees, knees
                In the jungle, welcome to the jungle
                Feel my, my, my my, serpentine
                Jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n-knees, knees
                Down In the jungle, welcome to the jungle
                Watch it bring you to you
                Its gonna bring you down, huh'),
        (2, 1, 'Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                (Take me home) oh, won´t you, please, take me home?
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                (Take me home) oh, won´t you, please, take me home?

                Just an urchin living under the street
                I´m a hard case that´s tough to beat
                I´m your charity case, so buy me something to eat
                I´ll pay you at another time
                Take it to the end of the line

                Rags to riches, or so they say
                You gotta keep pushing for the fortune and fame
                You know it´s, it´s all a gamble when it´s just a game
                You treat it like a capital crime
                Everybody´s doing their time

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home, yeah, yeah?
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home

                Strapped in the chair of the city´s gas chamber
                Why I´m here, I can´t quite remember
                The surgeon general says it´s hazardous to breathe
                I´d have another cigarette, but I can´t see
                Tell me who you´re gonna believe

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home, yeah, yeah
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home, yeah?

                So far away, so far away
                So far away, so far away

                Captain America´s been torn apart
                Now he´s a court jester with a broken heart
                He said, turn me around and take me back to the start
                I must be losing my mind, are you blind?
                I´ve seen it all a million times

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home, yeah, yeah
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home?

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home, yeah, yeah
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home, home?

                Oh, I wanna go, I wanna know
                Oh, won´t you, please, take me home?
                I wanna see how good it can be
                Oh, won´t you, please, take me home?

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                (Take me home) oh, won´t you please take me home?
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home?

                Take me down (oh, yeah), spin me ´round
                Oh, won´t you, please, take me home?
                I wanna see how good it can be
                Oh, won´t you, please, take me home?

                I wanna see how good it can be
                Oh, oh, take me home

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home?
                I wanna go, I wanna know
                Oh, won´t you, please, take me home?
                Yeah, baby'),
        (4, 2, 'Back in black, I hit the sack
                I´ve been too long, I´m glad to be back
                Yes, I´m let loose from the noose
                That´s kept me hanging about

                I´m just looking at the sky cause it´s getting me high
                Forget the hearse ´cause I´ll never die
                I got nine lives, cat´s eyes
                Abusing every one of them and running wild

                ´Cause I´m back
                Yes, I´m back
                Well, I´m back
                Yes, I´m back

                Well, I´m back, back
                Well, I´m back in black
                Yes, I´m back in black

                Back in the back of a Cadillac
                Number one with a bullet, I´m a power pack
                Yes, I´m in a bang with a gang
                They´ve got to catch me if they want me to hang

                Cause I´m back on the track and I´m beating the flack
                Nobody´s gonna get me on another rap
                So look at me now, I´m just making my play
                Don´t try to push your luck, just get out of my way

                Cause I´m back
                Yes, I´m back
                Well, I´m back
                Yes, I´m back

                Well, I´m back, back
                Well, I´m back in black
                Yes, I´m back in black

                Well, I´m back
                Yes, I´m back
                Well, I´m back
                Yes, I´m back

                Well, I´m back, back
                Well, I´m back in black
                Yes, I´m back in black, yow

                Ah, yeah
                Oh, yeah
                Take my love
                Yeah, yeah
                Yeah
                Ah, hey, yeah
                Oh, yeah

                Well, I´m back (I´m back)
                Back (well, I´m back)
                Back (I´m back)
                Back (I´m back)

                Back (I´m back)
                Back, back in black
                Yes, I´m back in black

                Out of the sack'),
        (3, 3, 'Holdin'' me back
                Gravity''s holdin'' me back
                I want you to hold out the palm of your hand
                Why don''t we leave it at that?
                Nothin'' to say
                When everything gets in the way
                Seems you cannot be replaced
                And I''m the one who will stay, oh
                In this world, it''s just us
                You know it''s not the same as it was
                In this world, it''s just us
                You know it''s not the same as it was
                As it was, as it was
                You know it''s not the same
                Answer the phone
                "Harry, you''re no good alone
                Why are you sittin'' at home on the floor?
                What kind of pills are you on?"
                Ringin'' the bell
                And nobody''s comin'' to help
                Your daddy lives by himself
                He just wants to know that you''re well, oh
                In this world, it''s just us
                You know it''s not the same as it was
                In this world, it''s just us
                You know it''s not the same as it was
                As it was, as it was
                You know it''s not the same
                Go home, get ahead, light-speed internet
                I don''t wanna talk about the way that it was
                Leave America, two kids follow her
                I don''t wanna talk about who''s doin'' it first
                As it was
                You know it''s not the same as it was
                As it was, as it was'),
        (5, 4, 'I''ve been tryna call
                I''ve been on my own for long enough
                Maybe you can show me how to love, maybe
                I''m going through withdrawals
                You don''t even have to do too much
                You can turn me on with just a touch, baby
                I look around and
                Sin City''s cold and empty (oh)
                No one''s around to judge me (oh)
                I can''t see clearly when you''re gone
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch
                I said, ooh, I''m drowning in the night
                Oh, when I''m like this, you''re the one I trust
                (Hey, hey, hey)
                I''m running out of time
                ''Cause I can see the sun light up the sky
                So I hit the road in overdrive, baby, oh
                The city''s cold and empty (oh)
                No one''s around to judge me (oh)
                I can''t see clearly when you''re gone
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch
                I said, ooh, I''m drowning in the night
                Oh, when I''m like this, you''re the one I trust
                I''m just walking by to let you know (by to let you know)
                I can never say it on the phone (say it on the phone)
                Will never let you go this time (ooh)
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch
                (Hey, hey, hey)
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch'),
        (6, 5, 'Minha corrente e meu relógio têm branco e rosé
                Tudo um doce, uma bala de ver
                Eu não vim da roça, eu vou vingar os
                Que me vingaram só pra fuder você (oh)
                Desacredita? É só pagar pra ver (yeah)
                Quer um show? É só pagar pra ver (yeah)
                Uma vez tentaram me enrolar
                Ver meu corpo noticiado na TV
                Eu tenho conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah (grrah)
                Ye-yeah, eis a questão
                Eis a questão
                Had to stash the whole milli in the ceiling
                Need a visa for a bitch in brazilly (bitch)
                Mob boss, my wrist is like two fifty
                Might fly to Brazil and pull out the Bentley
                Show love to the kids I''m passing money
                Hundreads, fiftys make it rain twentys
                Overseas bitch saying make it rain on me
                I was in the trap before I had a chain on me
                Cuidado com a vida, mano (mano, yeah)
                A morte já é garantia, mano (mano, yeah)
                Cuidado onde você pisa, mano (mano)
                Pode ser armadilha, mano (mano)
                Três da manhã com a MAC na virilha
                E eu só vazo quando for dia, mano
                É como minha vó dizia, mano (ye-wo-yeah)
                Pra que ter vida se não vai ser pra ser vivida?
                Põe limão na ferida
                Coisa ruim vira notícia
                Sem espaço pra quem vacilar
                Coisa não ficar mais séria ainda
                Eu tenho conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah (grrah)
                Ye-yeah, eis a questão (yeah, yeah)
                Eis a questão (yeah, yeah)
                Just for rack, my niggas they getting you wet
                (Mob ties, mob ties)
                I feel like Al Capone, Big Meech
                Real so they give me love in the streets
                Like the way that she feel (way she feel)
                Took her home from Brazil (home from Brazil)
                Mayweather its hand like a pro boxer (pro boxer)
                Kick''er out the crib like I play soccer
                Freaky little bitch like to play doctor
                Mama walked in my room seen a real choppa
                We got big guns like the mafia (mafia)
                When you''re getting to the money
                Aain''t no stoppin'' you (stoppin'' you)
                They call me the kid like a toddler (toddler)
                Bullet proof car like a mobster (mobster)
                Eu tenho conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah (grrah)
                Ye-yeah, eis a questão
                Eis a questão
                Cuidado com a vida, mano
                Cuidado onde você pisa, mano
                Pode ser armadilha, mano
                Três da manhã com a MAC na virilha
                E eu só vazo quando for dia, mano
                É como minha vó dizia, mano
                São conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah
                Eis a questão, eis a questão'),
        (7, 1, 'Quando eu digo que deixei de te amar
                É porque eu te amo
                Quando eu digo que não quero mais você
                É porque eu te quero
                Eu tenho medo de te dar meu coração
                E confessar que eu estou em tuas mãos
                Mas não posso imaginar
                O que vai ser de mim
                Se eu te perder um dia

                Eu me afasto e me defendo de você
                Mas depois me entrego
                Faço tipo, falo coisas que eu não sou
                Mas depois eu nego
                Mas a verdade
                É que eu sou louco por você
                E tenho medo de pensar em te perder
                Eu preciso aceitar que não dá mais
                Pra separar as nossas vidas

                E nessa loucura de dizer que não te quero
                Vou negando as aparências
                Disfarçando as evidências
                Mas pra que viver fingindo
                Se eu não posso enganar meu coração?
                Eu sei que te amo!

                Chega de mentiras
                De negar o meu desejo
                Eu te quero mais que tudo
                Eu preciso do seu beijo
                Eu entrego a minha vida
                Pra você fazer o que quiser de mim
                Só quero ouvir você dizer que sim!

                Diz que é verdade, que tem saudade
                Que ainda você pensa muito em mim
                Diz que é verdade, que tem saudade
                Que ainda você quer viver pra mim'),
        (8, 7, 'Yeah
                7:30 in the night, yeah
                Ooh-ooh, ooh
                I get those goosebumps every time, yeah, you come around, yeah
                You ease my mind, you make everything feel fine
                Worried ''bout those comments, I''m way too numb, yeah
                It''s way too dumb, yeah
                I get those goosebumps every time, I need the Heimlich
                Throw that to the side, yeah
                I get those goosebumps every time, yeah, when you''re not around (straight up)
                When you throw that to the side, yeah (it''s lit)
                I get those goosebumps every time, yeah
                7-1-3 through the 2-8-1, yeah I''m ridin''
                Why they on me?
                Why they on me? I''m flyin'', sippin'' low-key
                I be sippin'' low-key in Onyx, rider, rider
                When I''m pullin'' up right beside ya
                Pop star, lil'' Mariah
                When I text, kick game, knowledge
                Throw a stack on the Bible
                Never Snapchat or took molly
                She fall through plenty, her and all her ginnies, yeah
                We at the top floor, right there off Doheny, yeah
                Oh no, I can''t fuck with y''all, yeah
                When I''m with my squad I cannot do no wrong, yeah
                Saucin'' in the city, don''t get misinformed, yeah
                They gon'' pull up on you (brrt, brrt, brrt)
                Yeah, we gon'' do some things, some things you can''t relate
                Yeah, ''cause we from a place, a place you cannot stay
                Oh, you can''t go, oh, I don''t know
                Oh, back the fuck up off me (brrt, brrt, brrt)
                I get those goosebumps every time, yeah, you come around, yeah
                You ease my mind, you make everything feel fine
                Worried ''bout those comments, I''m way too numb, yeah
                It''s way too dumb, yeah
                I get those goosebumps every time, I need the Heimlich
                Throw that to the side, yeah
                I get those goosebumps every time, yeah, when you''re not around
                When you throw that to the side, yeah
                I get those goosebumps every time
                Uh, I wanna press my like, yeah, I wanna press my
                I want a green light, I wanna be like
                I wanna press my line, yeah
                I wanna to take that ride, yeah
                I''m gonna press my line
                I want a green light, I wanna be like, I wanna press my
                Mama, dear, spare your feelings
                I''m relivin'' moments, peelin'' more residual
                I can buy the building, burn the building, take your bitch
                Rebuild the building just to fuck some more
                I can justify my love for you
                And touch the sky for God to stop debatin'' war
                Put the pussy on a pedestal (ayy)
                Put the pussy on a high horse
                That pussy to die for
                That pussy to die for
                Peter Piper, picked a pepper
                So I could pick your brain and put your heart together
                We depart the shady parts and party hard, the diamonds yours
                The coupe forever
                My best shot, just might shoot forever like (brrt)
                I get those goosebumps every time, yeah, you come around, yeah
                You ease my mind, you make everything feel fine
                Worried ''bout those comments, I''m way too numb, yeah
                It''s way too dumb, yeah
                I get those goosebumps every time, I need the Heimlich
                Throw that to the side, yeah
                I get those goosebumps every time, yeah, when you''re not around
                When you throw that to the side, yeah
                I get those goosebumps every time'),
        (9, 8, 'There''s a stranger in my bed
                There''s a pounding in my head
                Glitter all over the room
                Pink flamingos in the pool
                I smell like a minibar
                DJ''s passed out in the yard
                Barbies on the barbecue
                This a hickey or a bruise?
                Pictures of last night ended up online, I''m screwed
                Oh, well
                It''s a blacked out blur, but I''m pretty sure it ruled
                Damn
                Last Friday night
                Yeah, we danced on tabletops, and we took too many shots
                Think we kissed, but I forgot last Friday night
                Yeah, we maxed our credit cards and got kicked out of the bar
                So we hit the boulevard last Friday night
                We went streaking in the park, skinny-dipping in the dark
                Then had a ménage à trois last Friday night
                Yeah, I think we broke the law, always say we''re gonna stop-op, oh-whoa
                But this Friday night
                Do it all again
                But this Friday night
                Do it all again
                Trying to connect the dots
                Don''t know what to tell my boss
                Think the city towed my car
                Chandelier is on the floor
                Ripped my favorite party dress
                Warrant''s out for my arrest
                Think I need a ginger ale
                That was such an epic fail
                Pictures of last night ended up online, I''m screwed
                Oh, well
                It''s a blacked out blur, but I''m pretty sure it ruled
                Damn
                Last Friday night
                Yeah, we danced on tabletops, and we took too many shots
                Think we kissed, but I forgot last Friday night
                Yeah, we maxed our credit cards and got kicked out of the bar
                So we hit the boulevard last Friday night
                We went streaking in the park, skinny-dipping in the dark
                Then had a ménage à trois last Friday night
                Yeah, I think we broke the law, always say we''re gonna stop-op, oh-whoa
                But this Friday night
                Do it all again (do it all again)
                But this Friday night
                Do it all again (do it all again)
                But this Friday night
                Last Friday night
                Yeah, we danced on tabletops, and we took too many shots
                Think we kissed, but I forgot last Friday night
                Yeah, we maxed our credit cards and got kicked out of the bar
                So we hit the boulevard last Friday night
                We went streaking in the park, skinny-dipping in the dark
                Then had a ménage à trois last Friday night
                Yeah, I think we broke the law, always say we''re gonna stop-op, oh-whoa
                But this Friday night
                Do it all again'),
        (10, 10, 'End of passion play, crumbling away
                I''m your source of self-destruction
                Veins that pump with fear, sucking darkest clear
                Leading on your death''s construction
                Taste me, you will see
                More is all you need
                Dedicated to
                How I''m killing you
                Come crawling faster
                Obey your master
                Your life burns faster
                Obey your master, master
                Master of puppets, I''m pulling your strings
                Twisting your mind and smashing your dreams
                Blinded by me, you can''t see a thing
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Needlework the way, never you betray
                Life of death becoming clearer
                Pain monopoly, ritual misery
                Chop your breakfast on a mirror
                Taste me, you will see
                More is all you need
                Dedicated to
                How I''m killing you
                Come crawling faster
                Obey your master
                Your life burns faster
                Obey your master, master
                Master of puppets, I''m pulling your strings
                Twisting your mind and smashing your dreams
                Blinded by me, you can''t see a thing
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Just call my name, ''cause I''ll hear you scream
                Master, master (master)
                Where''s the dreams that I''ve been after?
                (Master, master)
                You promised only lies
                (Laughter, laughter)
                All I hear or see is laughter
                (Laughter, laughter)
                Laughing at my cries
                Fix me!
                Hell is worth all that, natural habitat
                Just a rhyme without a reason
                Never-ending maze, drift on numbered days
                Now your life is out of season
                I will occupy
                I will help you die
                I will run through you
                Now I rule you too
                Come crawling faster
                Obey your master
                Your life burns faster
                Obey your master, master
                Master of puppets, I''m pulling your strings
                Twisting your mind and smashing your dreams
                Blinded by me, you can''t see a thing
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Just call my name, ''cause I''ll hear you scream
                Master, master'),
        (11, 5, 'Depois que eu conheci o Mandela
                Depois que eu vi como ela dança
                Depois que eu vi como ela zoa
                Depois que eu vi como ela se assanha

                Só agora que eu fui perceber

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer'),
        (12, 12, 'É que não sobrou espaço pra outro alguém
                Minha saudade só cabe no teu abraço, no de mais ninguém
                Tenho dó de quem me conhecer agora
                Que todo amor eu tô jogando fora
                E qualquer um que bate aqui nesse meu coração
                Não passa nem da porta
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Leva mal não
                Só tem espaço pra você no coração
                É que não sobrou espaço pra outro alguém
                Minha saudade só cabe no teu abraço, no de mais ninguém
                Tenho dó de quem me conhecer agora
                Que todo amor eu tô jogando fora
                E qualquer um que bate aqui nesse meu coração
                Não passa nem da porta
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém (se que saber se eu quero outro alguém)
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Leva mal não
                Só tem espaço pra você no coração'),
        (13, 14, 'Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca
                Queimando profundo, o sol me cobriu
                Atiçando labaredas na minha mente
                Caindo no mundo
                Pelada no rio, meu bem
                Eu quero esse clima quente
                Só o calor deixa o meu corpo assim
                Bem de leve e bem melhor de cor
                Meu humor não pode ver um frio, hã-hã, hã-hã
                Só o sol sabe me querer bem
                Brisa de Verão me dá mais cor
                Meu amor, vem me molhar, neném, aham, aham
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca
                Queimando profundo, o sol me cobriu
                Atiçando labaredas na minha mente
                Caindo no mundo
                Pelada no rio, meu bem
                Eu quero esse clima quente
                Só o calor deixa o meu corpo assim
                Bem de leve e bem melhor de cor
                Meu humor não pode ver um frio, hã-hã, hã-hã
                Só o sol sabe me querer bem
                Brisa de Verão me dá mais cor
                Meu amor, vem me molhar, neném, aham, aham
                Hmm, isso aqui é bom de arrebitar, viu?
                Aham, aham
                Ow, me chama pra tomar banho na piscina da sua casa?
                Aham, aham
                Ai!
                Aham, aham
                Nossa, que calor!
                Aí, que delícia o verão
                A gente mostra o ombrim
                A gente brinca'),
        (14, 2, 'letra_Aqui'),
        (15, 13, 'A garrafa precisa do copo
                O copo precisa da mesa
                A mesa precisa de mim
                E eu preciso da cerveja
                Igual eu preciso dele
                Na minha vida
                Mas quanto mais eu vou atrás
                Mais ele pisa
                Então já que é assim
                Se por ele eu sofro sem pausa
                Quem quiser me amar
                Também vai sofrer nessa bagaça
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Todo mundo vai sofrer boa vista
                Aqui não!
                Igual eu preciso dele
                Na minha vida
                Mas quanto mais eu vou atrás
                Mais ele pisa
                Então já que é assim
                Se por ele eu sofro sem pausa
                Quem quiser me amar
                Também vai sofrer nessa bagaça
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Só vocês assim, vem
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Ninguém vai sofrer sozinho
                Marília ta aqui com vocês
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer'),
        (16, 9, 'Can''t you see I''m easily bothered by persistence?
                One step from lashing out at you
                You want in, to get under my skin and call yourself a friend
                I''ve got more friends like you, what do I do?
                Is there no standard anymore?
                What it takes, who I am, where I''ve been, belong
                You can''t be something you''re not
                Be yourself, by yourself, stay away from me
                A lesson learned in life
                Known from the dawn of time
                Respect, walk, what did you say?
                Respect, walk
                Are you talkin'' to me? Are you talkin'' to me?
                Run your mouth when I''m not around, it''s easy to achieve
                You cry to weak friends that sympathize
                Can you hear the violins playing your song?
                Those same friends tell me your every word
                Is there no standard anymore?
                What it takes, who I am, where I''ve been, belong
                You can''t be something you''re not
                Be yourself, by yourself, stay away from me
                A lesson learned in life
                Known from the dawn of time
                Respect, walk, what did you say?
                Respect, walk, are you talkin'' to me?
                Respect, walk, what did you say?
                Respect, walk
                Are you talkin'' to me? Are you talkin'' to me?
                No way, punk
                Respect, walk, what did you say?
                Respect, walk, are you talkin'' to me?
                Respect, walk, what did you say?
                Respect, walk
                Are you talkin'' to me? Are you talkin'' to me?
                Walk on home, boy');

----
--Inserção de Relação entre Músicas e Gêneros
INSERT INTO Genero_Musica (id_midia, id_genero) VALUES
    (1, 1), -- Welcome To The Jungle - Guns n Roses - Rock
    (2, 1), -- Paradise City - Guns n Roses - Rock
    (3, 2), -- As It Was - Harry Styles - Pop
    (4, 1), -- Back in Black - AC/DC - Rock
    (5, 2), -- Blinding Lights - The Weeknd - Pop
    (6, 9), -- Conexão de Máfia - Matuê - Trap
    (7, 4), -- Evidências - Chitãozinho e Xororó - Sertanejo
    (8, 8), -- Goosebumps - Travis Scott - Rap
    (9, 2), -- Last Friday Night - Katy Perry - Pop
    (10, 6), -- Master of Puppets - Metallica - Metal
    (11, 3), -- Namorar Pra Quê - MC Kekel - Funk
    (12, 5), -- Nem de Graça - Pixote - Pagode
    (13, 2), -- Ombrim - Marina Sena - Pop
    (13, 3), -- Ombrim - Marina Sena - Funk
    (14, 8), -- Rap God - Eminem - Rap
    (15, 3), -- Todo Mundo Vai Sofrer - MC Kekel - Funk
    (16, 6); -- Walk - Pantera - Metal

---- 
--Inserção Temas de Podcast
INSERT INTO Tema (id_tema, descricao) VALUES
        (1, 'Politica'),
        (2, 'Tecnologia'),
        (3, 'Geek'),
        (4, 'Jornalistico'),
        (5, 'RPG'),
        (6, 'Entrevista');

---- 
--Inserção Podcaster
INSERT INTO Podcaster (id_podcaster, nome) VALUES
        (1, 'Podpah'),
        (2, 'Hipsters Ponto Tech'),
        (3, 'NerdCast'),
        (4, 'Flow Podcast');

---- 
--Inserção Podcast
INSERT INTO Midia (id_midia, nome, duracao, qtd_streamings, data_lancamento) VALUES
        (17, 'MANO BROWN - Podpah', '02:53:58', 0, '07-03-2022'),
        (18, 'LUCAS INUTILISMO - Podpah', '02:36:20', 0, '17-10-2020'),
        (19, 'Web3 vale o hype? - Hipsters Ponto Tech', '04:34', 0, '24-10-2023'),
        (20, 'Loki 2: O glorioso propósito do deus da trapaça - NerdCast', '04:34', 0, '17-11-2023'),
        (21, 'GAULES - Flow Podcast', '02:59:42', 0, '13-03-2020');
----
--Inserção Podcast
INSERT INTO Podcast (id_midia, id_podcaster) VALUES
        (17, 1),
        (18, 1),
        (19, 2),
        (20, 3),
        (21, 4);

----
--Inserção Podcast_Tema
INSERT INTO Podcast_Tema (id_midia, id_tema) VALUES
        (17, 6),
        (18, 6),
        (19, 2),
        (20, 3),
        (21, 6);        

----
--Inserção Usuario
INSERT INTO Usuario (id_usuario, id_plano, nome, email, cpf) VALUES
        (1, 1, 'Milton Pacheco', 'miltondasp@gmail.com', '04001743097'); 

----
--Inserção Reproducao
INSERT INTO Reproducao (id_midia, id_usuario, data_reproducao) VALUES
        (1, 1, '2017-08-24 17:45:42'),
        (2, 1, '2017-08-24 17:45:42'),
        (3, 1, '2017-08-24 17:45:42'),
        (4, 1, '2017-08-24 17:45:42'),
        (5, 1, '2017-08-24 17:45:42');        

----
--Inserção Playlist
INSERT INTO Playlist (id_playlist, id_usuario, nome, descricao) VALUES
        (1, 1, 'Rock Antigo', 'Musicas de rock antigos');

----
--Inserção Midia_Playlist
INSERT INTO Midia_Playlist (id_midia, id_playlist) VALUES
        (1, 1),
        (2, 1),
        (4, 1),
        (10, 1);

----
--Inserção Cantor_Solo
INSERT INTO Cantor_Solo (id_artista, aniversario) VALUES
        (3, '01-02-1994'),
        (4, '16-02-1990'),
        (5, '11-10-1993'),
        (7, '30-04-1991'),
        (8, '25-10-1984'),
        (10, '10-07-1995'),
        (12, '26-09-1996'),
        (13, '17-10-1972');

----
--Inserção Banda
INSERT INTO Banda (id_artista, data_formacao) VALUES
        (1, 1985),
        (2, 1973),
        (6, 1969),
        (9, 1981),
        (11, 1991),
        (14, 1981);