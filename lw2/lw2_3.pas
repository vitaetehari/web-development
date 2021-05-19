PROGRAM Hello(INPUT, OUTPUT);
USES
  DOS;
VAR
  Query, QueryBegining: STRING;
  FirstSeparatorPosition: INTEGER;
BEGIN {Hello}
  WRITELN;
  Query := GetEnv('QUERY_STRING');
  FirstSeparatorPosition := Pos('&', Query);
  QueryBegining := Copy(Query, 1, 5);
  IF QueryBegining <> 'name='
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    BEGIN
      WRITE('Hello dear ');
      IF FirstSeparatorPosition <> 0
      THEN
        WRITELN(Copy(Query, 6, FirstSeparatorPosition - 6), '!')
      ELSE
        WRITELN(Copy(Query, 6, Length(Query)), '!')
    END
END. {Hello}
