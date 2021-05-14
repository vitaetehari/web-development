PROGRAM WorkingWithQueryString(INPUT, OUTPUT);
USES
  DOS;

FUNCTION GetParameter(Key: STRING): STRING;
VAR
  Query: STRING;
  KeyPosition, FirstSeparatorPosition: INTEGER;
BEGIN {GetParameter}
  Query := GetEnv('QUERY_STRING');
  KeyPosition := Pos(Concat(Key, '='), Query);
  IF KeyPosition = 0
  THEN
    BEGIN
      GetParameter := '';
      EXIT
    END;
  Delete(Query, 1, KeyPosition-1);
  FirstSeparatorPosition := Pos('&', Query);
  IF FirstSeparatorPosition <> 0
  THEN
    GetParameter := Copy(Query, Length(Key) + 2, FirstSeparatorPosition - (Length(Key) + 2))
  ELSE
    GetParameter := Copy(Query, Length(Key) + 2, Length(Query))
END; {GetParameter}

BEGIN {WorkingWithQueryString}
  WRITELN;
  WRITELN('First Name: ', GetParameter('first_name'));
  WRITELN('Last Name: ', GetParameter('last_name'));
  WRITELN('Age: ', GetParameter('age'))
END. {WorkingWithQueryString}
