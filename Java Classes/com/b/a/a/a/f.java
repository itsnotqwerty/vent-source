package com.b.a.a.a;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class f
{
  private static final TimeZone bIX = TimeZone.getTimeZone("GMT");
  private static final ThreadLocal<DateFormat> bIY = new ThreadLocal() {};
  private static final String[] bIZ = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" };
  private static final DateFormat[] bJa = new DateFormat[15];
  
  public static Date dE(String paramString)
  {
    int i = 0;
    Object localObject;
    if (paramString.length() == 0) {
      localObject = null;
    }
    ParsePosition localParsePosition;
    do
    {
      return (Date)localObject;
      localParsePosition = new ParsePosition(0);
      localObject = ((DateFormat)bIY.get()).parse(paramString, localParsePosition);
    } while (localParsePosition.getIndex() == paramString.length());
    for (;;)
    {
      synchronized (bIZ)
      {
        int j = bIZ.length;
        if (i >= j) {
          break;
        }
        DateFormat localDateFormat = bJa[i];
        localObject = localDateFormat;
        if (localDateFormat == null)
        {
          localObject = new SimpleDateFormat(bIZ[i], Locale.US);
          ((DateFormat)localObject).setTimeZone(bIX);
          bJa[i] = localObject;
        }
        localParsePosition.setIndex(0);
        localObject = ((DateFormat)localObject).parse(paramString, localParsePosition);
        if (localParsePosition.getIndex() != 0) {
          return (Date)localObject;
        }
      }
      i += 1;
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */