PROGRAM CgiTest(INPUT, OUTPUT);
USES
  DOS;
BEGIN {CgiTest}
  WRITELN;
  WRITELN('Request Method: ', GetEnv('REQUEST_METHOD'));
  WRITELN('Query: ', GetEnv('QUERY_STRING'));
  WRITELN('Content Length: ', GetEnv('CONTENT_LENGTH'));
  WRITELN('User Agent: ', GetEnv('HTTP_USER_AGENT'));
  WRITELN('Host: ', GetEnv('HTTP_HOST'))
END. {CgiTest}
