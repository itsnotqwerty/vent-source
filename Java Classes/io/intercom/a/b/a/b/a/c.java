package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.e;
import io.intercom.a.b.a.p;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;

public final class c
  extends r<Date>
{
  public static final s cRW = new s()
  {
    public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
    {
      if (paramAnonymousa.bkb == Date.class) {
        return new c();
      }
      return null;
    }
  };
  private final DateFormat cSa = DateFormat.getDateTimeInstance(2, 2, Locale.US);
  private final DateFormat cSb = DateFormat.getDateTimeInstance(2, 2);
  
  private void a(io.intercom.a.b.a.d.c paramc, Date paramDate)
    throws IOException
  {
    if (paramDate == null) {}
    for (;;)
    {
      try
      {
        paramc.Kn();
        return;
      }
      finally {}
      paramc.fe(this.cSa.format(paramDate));
    }
  }
  
  private Date dk(String paramString)
  {
    try
    {
      Date localDate1 = this.cSb.parse(paramString);
      paramString = localDate1;
    }
    catch (ParseException localParseException1)
    {
      try
      {
        Date localDate2 = this.cSa.parse(paramString);
        paramString = localDate2;
      }
      catch (ParseException localParseException2)
      {
        try
        {
          Date localDate3 = io.intercom.a.b.a.b.a.a.a.parse(paramString, new ParsePosition(0));
          paramString = localDate3;
        }
        catch (ParseException localParseException3)
        {
          throw new p(paramString, localParseException3);
        }
      }
    }
    finally {}
    return paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */