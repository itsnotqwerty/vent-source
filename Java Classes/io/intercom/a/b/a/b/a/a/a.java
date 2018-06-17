package io.intercom.a.b.a.b.a.a;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public final class a
{
  private static final TimeZone bjW = TimeZone.getTimeZone("UTC");
  
  private static boolean a(String paramString, int paramInt, char paramChar)
  {
    return (paramInt < paramString.length()) && (paramString.charAt(paramInt) == paramChar);
  }
  
  private static int d(String paramString, int paramInt)
  {
    while (paramInt < paramString.length())
    {
      int i = paramString.charAt(paramInt);
      if ((i < 48) || (i > 57)) {
        return paramInt;
      }
      paramInt += 1;
    }
    return paramString.length();
  }
  
  private static int d(String paramString, int paramInt1, int paramInt2)
    throws NumberFormatException
  {
    if ((paramInt1 < 0) || (paramInt2 > paramString.length()) || (paramInt1 > paramInt2)) {
      throw new NumberFormatException(paramString);
    }
    int i = 0;
    int j;
    if (paramInt1 < paramInt2)
    {
      j = paramInt1 + 1;
      i = Character.digit(paramString.charAt(paramInt1), 10);
      if (i < 0) {
        throw new NumberFormatException("Invalid number: " + paramString.substring(paramInt1, paramInt2));
      }
      i = -i;
    }
    for (;;)
    {
      if (j < paramInt2)
      {
        int k = Character.digit(paramString.charAt(j), 10);
        if (k < 0) {
          throw new NumberFormatException("Invalid number: " + paramString.substring(paramInt1, paramInt2));
        }
        i = i * 10 - k;
        j += 1;
      }
      else
      {
        return -i;
        j = paramInt1;
      }
    }
  }
  
  public static Date parse(String paramString, ParsePosition paramParsePosition)
    throws ParseException
  {
    try
    {
      j = paramParsePosition.getIndex();
      i = j + 4;
      i2 = d(paramString, j, i);
      if (!a(paramString, i, '-')) {
        break label921;
      }
      i += 1;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      int i2;
      int i3;
      int i4;
      boolean bool;
      GregorianCalendar localGregorianCalendar;
      int i5;
      if (paramString != null) {
        break label846;
      }
      paramString = null;
      String str1 = localIndexOutOfBoundsException.getMessage();
      if (str1 == null) {
        break label403;
      }
      Object localObject2 = str1;
      if (!str1.isEmpty()) {
        break label433;
      }
      localObject2 = "(" + localIndexOutOfBoundsException.getClass().getName() + ")";
      paramString = new ParseException("Failed to parse date [" + paramString + "]: " + (String)localObject2, paramParsePosition.getIndex());
      paramString.initCause(localIndexOutOfBoundsException);
      throw paramString;
      j *= 10;
      break label924;
      j *= 100;
      break label924;
      c = paramString.charAt(k);
      if (c != 'Z') {
        break label941;
      }
      Object localObject1 = bjW;
      k += 1;
      String str2;
      do
      {
        do
        {
          localObject1 = new GregorianCalendar((TimeZone)localObject1);
          ((Calendar)localObject1).setLenient(false);
          ((Calendar)localObject1).set(1, i2);
          ((Calendar)localObject1).set(2, i3 - 1);
          ((Calendar)localObject1).set(5, i4);
          ((Calendar)localObject1).set(11, n);
          ((Calendar)localObject1).set(12, m);
          ((Calendar)localObject1).set(13, j);
          ((Calendar)localObject1).set(14, i);
          paramParsePosition.setIndex(k);
          return ((Calendar)localObject1).getTime();
          localObject1 = paramString.substring(k);
          if (((String)localObject1).length() >= 5) {}
          for (;;)
          {
            i1 = ((String)localObject1).length() + k;
            if ((!"+0000".equals(localObject1)) && (!"+00:00".equals(localObject1))) {
              break label698;
            }
            localObject1 = bjW;
            k = i1;
            break;
            localObject1 = (String)localObject1 + "00";
          }
          str1 = "GMT" + (String)localObject1;
          localObject2 = TimeZone.getTimeZone(str1);
          str2 = ((TimeZone)localObject2).getID();
          localObject1 = localObject2;
          k = i1;
        } while (str2.equals(str1));
        localObject1 = localObject2;
        k = i1;
      } while (str2.replace(":", "").equals(str1));
      throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str1 + " given, resolves to " + ((TimeZone)localObject2).getID());
      throw new IndexOutOfBoundsException("Invalid time zone indicator '" + c + "'");
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        char c;
        continue;
        paramString = "\"" + paramString + "'";
        continue;
        int i1 = 0;
        int j = i;
        int i = i1;
        continue;
        i1 = 0;
        j = 0;
        int k = i;
        i = i1;
        continue;
        continue;
        i = 0;
        j = 0;
        int m = 0;
        int n = 0;
        continue;
        i = j;
        continue;
        continue;
        k = i;
        i = j;
        j = k;
        k = i1;
        continue;
        if (c != '+') {
          if (c != '-') {}
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      label403:
      label433:
      label698:
      label846:
      label921:
      label924:
      label941:
      for (;;) {}
    }
    j = i + 2;
    i3 = d(paramString, i, j);
    if (a(paramString, j, '-'))
    {
      i = j + 1;
      k = i + 2;
      i4 = d(paramString, i, k);
      bool = a(paramString, k, 'T');
      if ((!bool) && (paramString.length() <= k))
      {
        localGregorianCalendar = new GregorianCalendar(i2, i3 - 1, i4);
        paramParsePosition.setIndex(k);
        return localGregorianCalendar.getTime();
      }
      if (bool)
      {
        j = k + 1;
        i = j + 2;
        n = d(paramString, j, i);
        if (a(paramString, i, ':'))
        {
          i += 1;
          j = i + 2;
          m = d(paramString, i, j);
          i = j;
          if (a(paramString, j, ':')) {
            i = j + 1;
          }
          if (paramString.length() > i)
          {
            j = paramString.charAt(i);
            if ((j != 90) && (j != 43) && (j != 45))
            {
              k = i + 2;
              j = d(paramString, i, k);
              i = j;
              if (j > 59)
              {
                i = j;
                if (j < 63) {
                  i = 59;
                }
              }
              if (a(paramString, k, '.'))
              {
                k += 1;
                i1 = d(paramString, k + 1);
                i5 = Math.min(i1, k + 3);
                j = d(paramString, k, i5);
                switch (i5 - k)
                {
                case 2: 
                  if (paramString.length() <= k) {
                    throw new IllegalArgumentException("No time zone indicator");
                  }
                  break;
                }
              }
            }
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */