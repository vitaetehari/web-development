PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  Query: STRING;
BEGIN {SarahRevere}
  WRITELN;
  Query := getEnv('QUERY_STRING');
  IF Query = 'lanterns=1'
  THEN
    WRITELN('The British are coming by Sea.')
  ELSE
    IF Query = 'lanterns=2'
    THEN
      WRITELN('The British are coming by Land.')
    ELSE
      WRITELN('Sarah said nothing.')
END. {SarahRevere}
