package com.google.a;

import com.google.a.b.e;
import com.google.a.b.j;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

final class a
  extends u<java.util.Date>
{
  private final Class<? extends java.util.Date> bgg;
  private final List<DateFormat> bgh = new ArrayList();
  
  public a(Class<? extends java.util.Date> paramClass, int paramInt1, int paramInt2)
  {
    this.bgg = k(paramClass);
    this.bgh.add(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US));
    if (!Locale.getDefault().equals(Locale.US)) {
      this.bgh.add(DateFormat.getDateTimeInstance(paramInt1, paramInt2));
    }
    if (e.vs()) {
      this.bgh.add(j.az(paramInt1, paramInt2));
    }
  }
  
  a(Class<? extends java.util.Date> paramClass, String paramString)
  {
    this.bgg = k(paramClass);
    this.bgh.add(new SimpleDateFormat(paramString, Locale.US));
    if (!Locale.getDefault().equals(Locale.US)) {
      this.bgh.add(new SimpleDateFormat(paramString));
    }
  }
  
  private java.util.Date dk(String paramString)
  {
    for (;;)
    {
      Object localObject1;
      Object localObject2;
      synchronized (this.bgh)
      {
        localObject1 = this.bgh.iterator();
        if (((Iterator)localObject1).hasNext()) {
          localObject2 = (DateFormat)((Iterator)localObject1).next();
        }
      }
      for (;;)
      {
        try
        {
          localObject2 = ((DateFormat)localObject2).parse(paramString);
          return (java.util.Date)localObject2;
        }
        catch (ParseException localParseException2) {}
        try
        {
          localObject1 = com.google.a.b.a.a.a.parse(paramString, new ParsePosition(0));
          return (java.util.Date)localObject1;
        }
        catch (ParseException localParseException1)
        {
          throw new s(paramString, localParseException1);
        }
      }
      paramString = finally;
      throw paramString;
    }
  }
  
  private static Class<? extends java.util.Date> k(Class<? extends java.util.Date> paramClass)
  {
    if ((paramClass != java.util.Date.class) && (paramClass != java.sql.Date.class) && (paramClass != Timestamp.class)) {
      throw new IllegalArgumentException("Date type must be one of " + java.util.Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + paramClass);
    }
    return paramClass;
  }
  
  public final String toString()
  {
    DateFormat localDateFormat = (DateFormat)this.bgh.get(0);
    if ((localDateFormat instanceof SimpleDateFormat)) {
      return "DefaultDateTypeAdapter(" + ((SimpleDateFormat)localDateFormat).toPattern() + ')';
    }
    return "DefaultDateTypeAdapter(" + localDateFormat.getClass().getSimpleName() + ')';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */