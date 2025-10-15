USE pokedex;

DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemon
(
    id          INT(3) UNSIGNED ZEROFILL NOT NULL UNIQUE,
    name        VARCHAR(32) PRIMARY KEY                                                                                                                                                       NOT NULL NOT NULL,
    caught      BOOL                                                                                                                                                         DEFAULT false    NOT NULL,
    type_1      ENUM ('Feuer', 'Pflanze', 'Wasser', 'Gift', 'Flug', 'Kaefer', 'Normal', 'Elektro', 'Boden', 'Kampf', 'Psycho', 'Gestein', 'Stahl', 'Eis', 'Geist', 'Drache') DEFAULT 'normal' NOT NULL,
    type_2      ENUM ('Feuer', 'Pflanze', 'Wasser', 'Gift', 'Flug', 'Kaefer', 'Normal', 'Elektro', 'Boden', 'Kampf', 'Psycho', 'Gestein', 'Stahl', 'Eis', 'Geist', 'Drache') DEFAULT NULL,
    description TEXT                                                                                                                                                         DEFAULT NULL
);

INSERT INTO pokemon (id, name, caught, type_1, type_2, description)
VALUES (1, 'Bisasam', false, 'Pflanze', 'Gift',
        'Nach der Geburt nutzt es für eine Weile die Nährstoffe im Samen auf seinem Rücken, um zu wachsen.'),
       (2, 'Bisaknosp', false, 'Pflanze', 'Gift',
        'Die Sonne macht es stärker. Die Knospe auf seinem Rücken wächst unter dem Einfluss von Sonnenlicht.'),
       (3, 'Bisaflor', false, 'Pflanze', 'Gift', 'Da es Sonnenlicht in Energie umwandelt, ist es im Sommer stärker.'),
       (4, 'Glumanda', true, 'Feuer', NULL,
        'Die Flamme an seiner Schwanzspitze zeigt seine Lebensenergie an. Geht es ihm nicht gut, wird die Flamme schwächer.'),
       (5, 'Glutexo', false, 'Feuer', NULL,
        'Wenn Glutexo seinen brennenden Schwanz schwingt, steigt die Temperatur um es herum immer weiter an und setzt seinen Gegnern zu.'),
       (6, 'Glurak', false, 'Feuer', 'Flug',
        'Wenn Glurak richtig wütend wird, flackert die Flamme an seiner Schwanzspitze in einem bläulichen Ton.'),
       (7, 'Schiggy', false, 'Wasser', NULL,
        'Nach der Geburt schwillt sein Rücken an und verhärtet sich zu einem Panzer. Es versprüht starken Schaum aus seinem Maul.'),
       (8, 'Schillok', false, 'Wasser', NULL,
        'Sein langer und buschiger Schweif zeugt von Langlebigkeit. Es ist besonders bei älteren Menschen beliebt.'),
       (9, 'Turtok', false, 'Wasser', NULL,
        'Es macht sich absichtlich schwer, um den Rückstoß seiner Wasserstrahlen abzufangen.'),
       (10, 'Raupy', true, 'Kaefer', NULL,
        'Als Schutz vor Feinden sondert es einen übel riechenden Gestank mit seinen Antennen ab.');
