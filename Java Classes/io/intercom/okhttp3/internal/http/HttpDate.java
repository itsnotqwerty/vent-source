package io.intercom.okhttp3.internal.http;

import io.intercom.okhttp3.internal.Util;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class HttpDate
{
  private static final DateFormat[] BROWSER_COMPATIBLE_DATE_FORMATS = new DateFormat[15];
  private static final String[] BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS;
  public static final long MAX_DATE = 253402300799999L;
  private static final ThreadLocal<DateFormat> STANDARD_DATE_FORMAT = new ThreadLocal()
  {
    protected final DateFormat initialValue()
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
      localSimpleDateFormat.setLenient(false);
      localSimpleDateFormat.setTimeZone(Util.UTC);
      return localSimpleDateFormat;
    }
  };
  
  static
  {
    BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS = new String[] { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" };
  }
  
  public static String format(Date paramDate)
  {
    return ((DateFormat)STANDARD_DATE_FORMAT.get()).format(paramDate);
  }
  
  public static Date parse(String paramString)
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
      localObject = ((DateFormat)STANDARD_DATE_FORMAT.get()).parse(paramString, localParsePosition);
    } while (localParsePosition.getIndex() == paramString.length());
    for (;;)
    {
      synchronized (BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS)
      {
        int j = BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS.length;
        if (i >= j) {
          break;
        }
        DateFormat localDateFormat = BROWSER_COMPATIBLE_DATE_FORMATS[i];
        localObject = localDateFormat;
        if (localDateFormat == null)
        {
          localObject = new SimpleDateFormat(BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS[i], Locale.US);
          ((DateFormat)localObject).setTimeZone(Util.UTC);
          BROWSER_COMPATIBLE_DATE_FORMATS[i] = localObject;
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http/HttpDate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */