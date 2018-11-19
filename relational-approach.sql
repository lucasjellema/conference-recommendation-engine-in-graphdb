select s.code
,      s.title
,      a2.attendee_name "suggested by"
from   people p1
       join
       attendance a1
       on (p1.name = a1.attendee_name)
       join attendance a2
       on (a2.session_code = a1.session_code)
       join speaker_liking sl
       on (sl.attendee_name = a2.attendee_name)
       join speakers sp
       on (sl.speaker_name = sp.speaker_name)
       join sessions s
       on (sp.session_code = s.code)
where  p1.name = 'Lucas Jellema'

