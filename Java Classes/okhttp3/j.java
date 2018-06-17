package okhttp3;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.c;
import okhttp3.internal.c.d;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

public final class j
{
  private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
  private static final Pattern MONTH_PATTERN;
  private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
  private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
  private final String domain;
  private final long expiresAt;
  private final boolean hostOnly;
  private final boolean httpOnly;
  public final String name;
  private final String path;
  private final boolean persistent;
  private final boolean secure;
  public final String value;
  
  static
  {
    MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
  }
  
  private j(String paramString1, String paramString2, long paramLong, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.name = paramString1;
    this.value = paramString2;
    this.expiresAt = paramLong;
    this.domain = paramString3;
    this.path = paramString4;
    this.secure = paramBoolean1;
    this.httpOnly = paramBoolean2;
    this.hostOnly = paramBoolean3;
    this.persistent = paramBoolean4;
  }
  
  public static List<j> a(q paramq, p paramp)
  {
    List localList = paramp.values("Set-Cookie");
    paramp = null;
    int j = localList.size();
    int i = 0;
    if (i < j)
    {
      Object localObject = (String)localList.get(i);
      localObject = a(System.currentTimeMillis(), paramq, (String)localObject);
      if (localObject == null) {
        break label98;
      }
      if (paramp != null) {
        break label95;
      }
      paramp = new ArrayList();
      label66:
      paramp.add(localObject);
    }
    label95:
    label98:
    for (;;)
    {
      i += 1;
      break;
      if (paramp != null) {
        return Collections.unmodifiableList(paramp);
      }
      return Collections.emptyList();
      break label66;
    }
  }
  
  @Nullable
  private static j a(long paramLong, q paramq, String paramString)
  {
    int i9 = paramString.length();
    int i = c.delimiterOffset(paramString, 0, i9, ';');
    int j = c.delimiterOffset(paramString, 0, i, '=');
    if (j == i) {
      return null;
    }
    String str1 = c.trimSubstring(paramString, 0, j);
    if ((str1.isEmpty()) || (c.indexOfControlOrNonAscii(str1) != -1)) {
      return null;
    }
    String str2 = c.trimSubstring(paramString, j + 1, i);
    if (c.indexOfControlOrNonAscii(str2) != -1) {
      return null;
    }
    l1 = 253402300799999L;
    l2 = -1L;
    localObject6 = null;
    localObject1 = null;
    bool5 = false;
    bool4 = false;
    bool2 = true;
    bool3 = false;
    i += 1;
    int i10;
    String str3;
    Object localObject2;
    if (i < i9)
    {
      i10 = c.delimiterOffset(paramString, i, i9, ';');
      j = c.delimiterOffset(paramString, i, i10, '=');
      str3 = c.trimSubstring(paramString, i, j);
      if (j < i10)
      {
        localObject2 = c.trimSubstring(paramString, j + 1, i10);
        label182:
        if (!str3.equalsIgnoreCase("expires")) {
          break label792;
        }
      }
    }
    for (;;)
    {
      int m;
      int i1;
      int k;
      try
      {
        int i11 = ((String)localObject2).length();
        i2 = dateCharacterOffset((String)localObject2, 0, i11, false);
        j = -1;
        m = -1;
        i1 = -1;
        k = -1;
        int n = -1;
        i = -1;
        localObject7 = TIME_PATTERN.matcher((CharSequence)localObject2);
        if (i2 < i11)
        {
          int i8 = dateCharacterOffset((String)localObject2, i2 + 1, i11, true);
          ((Matcher)localObject7).region(i2, i8);
          if ((j == -1) && (((Matcher)localObject7).usePattern(TIME_PATTERN).matches()))
          {
            i3 = Integer.parseInt(((Matcher)localObject7).group(1));
            i5 = Integer.parseInt(((Matcher)localObject7).group(2));
            i7 = Integer.parseInt(((Matcher)localObject7).group(3));
            i6 = k;
            i4 = n;
            i2 = i;
            i8 = dateCharacterOffset((String)localObject2, i8 + 1, i11, false);
            i = i2;
            n = i4;
            k = i6;
            i1 = i7;
            m = i5;
            j = i3;
            i2 = i8;
            continue;
            localObject2 = "";
            break label182;
          }
          if ((k == -1) && (((Matcher)localObject7).usePattern(DAY_OF_MONTH_PATTERN).matches()))
          {
            i6 = Integer.parseInt(((Matcher)localObject7).group(1));
            i2 = i;
            i4 = n;
            i7 = i1;
            i5 = m;
            i3 = j;
            continue;
          }
          if ((n == -1) && (((Matcher)localObject7).usePattern(MONTH_PATTERN).matches()))
          {
            str3 = ((Matcher)localObject7).group(1).toLowerCase(Locale.US);
            i4 = MONTH_PATTERN.pattern().indexOf(str3) / 4;
            i2 = i;
            i6 = k;
            i7 = i1;
            i5 = m;
            i3 = j;
            continue;
          }
          i2 = i;
          int i4 = n;
          int i6 = k;
          int i7 = i1;
          int i5 = m;
          int i3 = j;
          if (i != -1) {
            continue;
          }
          i2 = i;
          i4 = n;
          i6 = k;
          i7 = i1;
          i5 = m;
          i3 = j;
          if (!((Matcher)localObject7).usePattern(YEAR_PATTERN).matches()) {
            continue;
          }
          i2 = Integer.parseInt(((Matcher)localObject7).group(1));
          i4 = n;
          i6 = k;
          i7 = i1;
          i5 = m;
          i3 = j;
          continue;
          if (i2 < 1601) {
            throw new IllegalArgumentException();
          }
          if (n != -1) {
            break label1548;
          }
          throw new IllegalArgumentException();
          throw new IllegalArgumentException();
          throw new IllegalArgumentException();
          throw new IllegalArgumentException();
          throw new IllegalArgumentException();
          localObject2 = new GregorianCalendar(c.UTC);
          ((Calendar)localObject2).setLenient(false);
          ((Calendar)localObject2).set(1, i2);
          ((Calendar)localObject2).set(2, n - 1);
          ((Calendar)localObject2).set(5, k);
          ((Calendar)localObject2).set(11, j);
          ((Calendar)localObject2).set(12, m);
          ((Calendar)localObject2).set(13, i1);
          ((Calendar)localObject2).set(14, 0);
          l4 = ((Calendar)localObject2).getTimeInMillis();
          bool1 = true;
          l3 = l2;
          localObject2 = localObject1;
          bool6 = bool5;
          bool7 = bool4;
          bool8 = bool2;
          localObject7 = localObject6;
          break label1507;
          label792:
          if (str3.equalsIgnoreCase("max-age")) {
            try
            {
              l3 = parseMaxAge((String)localObject2);
              bool1 = true;
              l4 = l1;
              localObject2 = localObject1;
              bool6 = bool5;
              bool7 = bool4;
              bool8 = bool2;
              localObject7 = localObject6;
            }
            catch (NumberFormatException localNumberFormatException)
            {
              l3 = l2;
              l4 = l1;
              localObject3 = localObject1;
              bool6 = bool5;
              bool7 = bool4;
              bool8 = bool2;
              bool1 = bool3;
              localObject7 = localObject6;
            }
          }
          if (!str3.equalsIgnoreCase("domain")) {}
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        int i2;
        Object localObject3;
        localObject7 = localObject6;
        bool1 = bool3;
        bool8 = bool2;
        bool7 = bool4;
        bool6 = bool5;
        localObject4 = localObject1;
        l4 = l1;
        l3 = l2;
      }
      try
      {
        if (((String)localObject3).endsWith(".")) {
          throw new IllegalArgumentException();
        }
        localObject7 = localObject3;
        if (((String)localObject3).startsWith(".")) {
          localObject7 = ((String)localObject3).substring(1);
        }
        localObject7 = c.canonicalizeHost((String)localObject7);
        if (localObject7 == null) {
          throw new IllegalArgumentException();
        }
        bool8 = false;
        l3 = l2;
        l4 = l1;
        localObject3 = localObject1;
        bool6 = bool5;
        bool7 = bool4;
        bool1 = bool3;
      }
      catch (IllegalArgumentException localIllegalArgumentException2)
      {
        for (;;)
        {
          l3 = l2;
          l4 = l1;
          Object localObject5 = localObject1;
          bool6 = bool5;
          bool7 = bool4;
          bool8 = bool2;
          bool1 = bool3;
          localObject7 = localObject6;
        }
      }
      l3 = l2;
      l4 = l1;
      bool6 = bool5;
      bool7 = bool4;
      bool8 = bool2;
      bool1 = bool3;
      localObject7 = localObject6;
      if (!str3.equalsIgnoreCase("path")) {
        if (str3.equalsIgnoreCase("secure"))
        {
          bool6 = true;
          l3 = l2;
          l4 = l1;
          localObject3 = localObject1;
          bool7 = bool4;
          bool8 = bool2;
          bool1 = bool3;
          localObject7 = localObject6;
        }
        else if (str3.equalsIgnoreCase("httponly"))
        {
          bool7 = true;
          l3 = l2;
          l4 = l1;
          localObject3 = localObject1;
          bool6 = bool5;
          bool8 = bool2;
          bool1 = bool3;
          localObject7 = localObject6;
          break label1507;
          if (l2 == Long.MIN_VALUE)
          {
            l1 = Long.MIN_VALUE;
            localObject3 = paramq.host;
            if (localObject6 == null)
            {
              paramString = (String)localObject3;
              if ((((String)localObject3).length() == paramString.length()) || (PublicSuffixDatabase.Nh().getEffectiveTldPlusOne(paramString) != null)) {
                continue;
              }
              return null;
            }
          }
          else
          {
            if (l2 == -1L) {
              continue;
            }
            if (l2 <= 9223372036854775L)
            {
              l1 = l2 * 1000L;
              l2 = paramLong + l1;
              if (l2 >= paramLong)
              {
                l1 = l2;
                if (l2 <= 253402300799999L) {
                  continue;
                }
              }
              l1 = 253402300799999L;
              continue;
            }
            l1 = Long.MAX_VALUE;
            continue;
          }
          if (((String)localObject3).equals(localObject6))
          {
            i = 1;
            if (i == 0) {
              return null;
            }
          }
          else
          {
            if ((((String)localObject3).endsWith((String)localObject6)) && (((String)localObject3).charAt(((String)localObject3).length() - ((String)localObject6).length() - 1) == '.') && (!c.verifyAsIpAddress((String)localObject3)))
            {
              i = 1;
              continue;
            }
            i = 0;
            continue;
            if (localObject1 != null)
            {
              localObject3 = localObject1;
              if (((String)localObject1).startsWith("/")) {}
            }
            else
            {
              paramq = paramq.encodedPath();
              i = paramq.lastIndexOf('/');
              if (i == 0) {
                continue;
              }
              paramq = paramq.substring(0, i);
              localObject3 = paramq;
            }
            return new j(str1, str2, l1, paramString, (String)localObject3, bool5, bool4, bool2, bool3);
            paramq = "/";
            continue;
          }
          paramString = (String)localObject6;
          continue;
        }
        else
        {
          l3 = l2;
          l4 = l1;
          localObject3 = localObject1;
          bool6 = bool5;
          bool7 = bool4;
          bool8 = bool2;
          bool1 = bool3;
          localObject7 = localObject6;
          break label1507;
          continue;
          if ((i < 70) || (i > 99)) {
            continue;
          }
          i += 1900;
          i2 = i;
          if (i < 0) {
            continue;
          }
          i2 = i;
          if (i > 69) {
            continue;
          }
          i2 = i + 2000;
          continue;
        }
      }
      Object localObject4;
      label1507:
      i = i10 + 1;
      localObject1 = localObject4;
      l2 = l3;
      l1 = l4;
      bool5 = bool6;
      bool4 = bool7;
      bool2 = bool8;
      bool3 = bool1;
      localObject6 = localObject7;
      break;
      label1548:
      if ((k > 0) && (k <= 31)) {
        if ((j >= 0) && (j <= 23)) {
          if ((m >= 0) && (m <= 59)) {
            if (i1 >= 0) {
              if (i1 <= 59) {}
            }
          }
        }
      }
    }
  }
  
  private static int dateCharacterOffset(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    for (;;)
    {
      int i = paramInt2;
      if (paramInt1 < paramInt2)
      {
        i = paramString.charAt(paramInt1);
        if (((i >= 32) || (i == 9)) && (i < 127) && ((i < 48) || (i > 57)) && ((i < 97) || (i > 122)) && ((i < 65) || (i > 90)) && (i != 58)) {
          break label108;
        }
        i = 1;
        if (paramBoolean) {
          break label114;
        }
      }
      label108:
      label114:
      for (int j = 1;; j = 0)
      {
        if (i != j) {
          break label120;
        }
        i = paramInt1;
        return i;
        i = 0;
        break;
      }
      label120:
      paramInt1 += 1;
    }
  }
  
  private static long parseMaxAge(String paramString)
  {
    try
    {
      l = Long.parseLong(paramString);
      if (l > 0L) {
        break label15;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      long l;
      label15:
      while (paramString.matches("-?\\d+")) {
        if (!paramString.startsWith("-")) {
          return Long.MAX_VALUE;
        }
      }
      throw localNumberFormatException;
    }
    return Long.MIN_VALUE;
    return l;
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (!(paramObject instanceof j)) {}
    do
    {
      return false;
      paramObject = (j)paramObject;
    } while ((!((j)paramObject).name.equals(this.name)) || (!((j)paramObject).value.equals(this.value)) || (!((j)paramObject).domain.equals(this.domain)) || (!((j)paramObject).path.equals(this.path)) || (((j)paramObject).expiresAt != this.expiresAt) || (((j)paramObject).secure != this.secure) || (((j)paramObject).httpOnly != this.httpOnly) || (((j)paramObject).persistent != this.persistent) || (((j)paramObject).hostOnly != this.hostOnly));
    return true;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int n = this.name.hashCode();
    int i1 = this.value.hashCode();
    int i2 = this.domain.hashCode();
    int i3 = this.path.hashCode();
    int i4 = (int)(this.expiresAt ^ this.expiresAt >>> 32);
    int i;
    int j;
    label72:
    int k;
    if (this.secure)
    {
      i = 0;
      if (!this.httpOnly) {
        break label145;
      }
      j = 0;
      if (!this.persistent) {
        break label150;
      }
      k = 0;
      label81:
      if (!this.hostOnly) {
        break label155;
      }
    }
    for (;;)
    {
      return (k + (j + (i + (((((n + 527) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31) * 31) * 31) * 31 + m;
      i = 1;
      break;
      label145:
      j = 1;
      break label72;
      label150:
      k = 1;
      break label81;
      label155:
      m = 1;
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.name);
    localStringBuilder.append('=');
    localStringBuilder.append(this.value);
    if (this.persistent)
    {
      if (this.expiresAt != Long.MIN_VALUE) {
        break label133;
      }
      localStringBuilder.append("; max-age=0");
    }
    for (;;)
    {
      if (!this.hostOnly)
      {
        localStringBuilder.append("; domain=");
        localStringBuilder.append(this.domain);
      }
      localStringBuilder.append("; path=").append(this.path);
      if (this.secure) {
        localStringBuilder.append("; secure");
      }
      if (this.httpOnly) {
        localStringBuilder.append("; httponly");
      }
      return localStringBuilder.toString();
      label133:
      localStringBuilder.append("; expires=").append(d.format(new Date(this.expiresAt)));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */