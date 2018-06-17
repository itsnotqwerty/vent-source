package com.vent.d;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.Editable;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.text.style.ImageSpan;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import android.widget.MultiAutoCompleteTextView.Tokenizer;
import android.widget.TextView;
import com.vent.CachedImageView;
import com.vent.MyApplication;
import com.vent.a.m;
import com.vent.a.r;
import com.vent.a.x;
import com.vent.az;
import com.vent.az.a;
import com.vent.bb;
import com.vent.c.d;
import com.vent.c.f;
import com.vent.c.g;
import com.vent.c.h.a;
import com.vent.c.i;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public final class e
{
  public static Typeface cmU;
  public static Typeface cmV;
  public static Typeface cmW;
  public static Typeface cmX;
  public static Typeface cmY;
  public static Typeface cmZ;
  private static final ThreadLocal<DateFormat> cnA = new ThreadLocal() {};
  private static final ThreadLocal<DateFormat> cnB = new ThreadLocal() {};
  public static Typeface cna;
  public static Typeface cnb;
  public static Typeface cnc;
  public static Typeface cnd;
  public static Typeface cne;
  private static byte[] cnf;
  public static int cng;
  public static boolean cnh;
  public static boolean cni;
  public static int cnj;
  static final ArrayList<String> cnk = new ArrayList(Arrays.asList(new String[] { "#Vent", "#VentSuggestions" }));
  private static final boolean cnl = Locale.getDefault().getLanguage().equals("en");
  private static String cnm;
  private static String cnn;
  private static String cno;
  private static String cnp;
  private static String cnq;
  private static String cnr;
  private static String cns;
  private static String cnt;
  private static String cnu;
  private static String cnv;
  private static String cnw;
  private static String cnx;
  private static String cny;
  private static String[] cnz;
  
  public static void FA() {}
  
  public static SpannableStringBuilder a(SpannableStringBuilder paramSpannableStringBuilder)
  {
    SpannableStringBuilder localSpannableStringBuilder = paramSpannableStringBuilder;
    if (paramSpannableStringBuilder != null)
    {
      localSpannableStringBuilder = paramSpannableStringBuilder;
      if (bb.chZ)
      {
        int i3 = paramSpannableStringBuilder.length();
        localSpannableStringBuilder = paramSpannableStringBuilder;
        if (i3 > 5)
        {
          Object localObject1 = (CharacterStyle[])paramSpannableStringBuilder.getSpans(0, i3, com.vent.c.b.class);
          if ((Build.VERSION.SDK_INT >= 24) && (Build.VERSION.SDK_INT <= 25)) {
            Arrays.sort((Object[])localObject1, new a(paramSpannableStringBuilder));
          }
          int i4 = localObject1.length;
          int m = 0;
          int i = 0;
          int j = 0;
          int k = 0;
          int i1;
          int i2;
          int n;
          for (;;)
          {
            i1 = j;
            i2 = k;
            n = i;
            if (m >= i4) {
              break;
            }
            localSpannableStringBuilder = localObject1[m];
            n = paramSpannableStringBuilder.getSpanStart(localSpannableStringBuilder);
            if (i < n)
            {
              switch (Character.getType(paramSpannableStringBuilder.charAt(i)))
              {
              }
              for (;;)
              {
                i += 1;
                break;
                k += 1;
                continue;
                j += 1;
              }
            }
            i = paramSpannableStringBuilder.getSpanEnd(localSpannableStringBuilder);
            m += 1;
          }
          if (n < i3)
          {
            switch (Character.getType(paramSpannableStringBuilder.charAt(n)))
            {
            }
            for (;;)
            {
              n += 1;
              break;
              i2 += 1;
              continue;
              i1 += 1;
            }
          }
          localSpannableStringBuilder = paramSpannableStringBuilder;
          if (i2 > 0)
          {
            localSpannableStringBuilder = paramSpannableStringBuilder;
            if (i2 * 100 / (i1 + i2) > 33)
            {
              localSpannableStringBuilder = new SpannableStringBuilder(paramSpannableStringBuilder.toString().toLowerCase());
              j = localObject1.length;
              i = 0;
              Object localObject2;
              while (i < j)
              {
                localObject2 = localObject1[i];
                k = paramSpannableStringBuilder.getSpanStart(localObject2);
                m = paramSpannableStringBuilder.getSpanEnd(localObject2);
                localSpannableStringBuilder.replace(k, m, paramSpannableStringBuilder, k, m);
                i += 1;
              }
              localObject1 = (h.a[])paramSpannableStringBuilder.getSpans(0, i3, h.a.class);
              j = localObject1.length;
              i = 0;
              while (i < j)
              {
                localObject2 = localObject1[i];
                localSpannableStringBuilder.setSpan(((h.a)localObject2).Fx(), paramSpannableStringBuilder.getSpanStart(localObject2), paramSpannableStringBuilder.getSpanEnd(localObject2), 33);
                i += 1;
              }
            }
          }
        }
      }
    }
    return localSpannableStringBuilder;
  }
  
  public static SpannableStringBuilder a(SpannableStringBuilder paramSpannableStringBuilder, int paramInt, boolean[] paramArrayOfBoolean)
  {
    SpannableStringBuilder localSpannableStringBuilder;
    if (TextUtils.isEmpty(paramSpannableStringBuilder)) {
      localSpannableStringBuilder = null;
    }
    label134:
    do
    {
      return localSpannableStringBuilder;
      if (paramInt < 0)
      {
        if (paramInt < 0) {
          break label134;
        }
        localSpannableStringBuilder = paramSpannableStringBuilder.delete(paramInt, paramSpannableStringBuilder.length());
        paramSpannableStringBuilder = localSpannableStringBuilder;
        if (localSpannableStringBuilder.length() > 0)
        {
          paramInt = localSpannableStringBuilder.charAt(localSpannableStringBuilder.length() - 1);
          paramSpannableStringBuilder = localSpannableStringBuilder;
          if (paramInt >= 55296)
          {
            paramSpannableStringBuilder = localSpannableStringBuilder;
            if (paramInt <= 56319) {
              paramSpannableStringBuilder = localSpannableStringBuilder.delete(localSpannableStringBuilder.length() - 1, localSpannableStringBuilder.length());
            }
          }
        }
        paramArrayOfBoolean[0] = true;
      }
      for (;;)
      {
        paramInt = paramSpannableStringBuilder.length();
        while ((paramInt > 0) && (Character.isWhitespace(paramSpannableStringBuilder.charAt(paramInt - 1)))) {
          paramInt -= 1;
        }
        paramInt = c(paramSpannableStringBuilder, paramInt);
        break;
        paramArrayOfBoolean[0] = false;
      }
      int i = paramInt;
      if (paramInt == paramSpannableStringBuilder.length())
      {
        i = paramInt;
        if (paramArrayOfBoolean[0] != 0)
        {
          i = paramInt;
          for (;;)
          {
            paramInt = i;
            if (i <= 0) {
              break;
            }
            paramInt = i;
            if (Character.isWhitespace(paramSpannableStringBuilder.charAt(i - 1))) {
              break;
            }
            i -= 1;
          }
          for (;;)
          {
            i = paramInt;
            if (paramInt <= 0) {
              break;
            }
            i = paramInt;
            if (!Character.isWhitespace(paramSpannableStringBuilder.charAt(paramInt - 1))) {
              break;
            }
            paramInt -= 1;
          }
        }
      }
      paramSpannableStringBuilder = paramSpannableStringBuilder.delete(i, paramSpannableStringBuilder.length());
      localSpannableStringBuilder = paramSpannableStringBuilder;
    } while (paramArrayOfBoolean[0] == 0);
    paramInt = paramSpannableStringBuilder.length();
    paramArrayOfBoolean = paramSpannableStringBuilder;
    if (paramInt > 0)
    {
      paramArrayOfBoolean = paramSpannableStringBuilder;
      if (!Character.isWhitespace(paramSpannableStringBuilder.charAt(paramInt - 1))) {
        paramArrayOfBoolean = paramSpannableStringBuilder.append(' ');
      }
    }
    return paramArrayOfBoolean.append('…');
  }
  
  public static SpannableStringBuilder a(WeakReference<com.vent.a> paramWeakReference, WeakReference<?> paramWeakReference1, String paramString, int paramInt1, int paramInt2, Object paramObject, Map<String, r> paramMap, boolean paramBoolean1, boolean paramBoolean2, int paramInt3)
  {
    if (bb.cif == 2) {}
    for (boolean bool = true;; bool = false) {
      return a(paramWeakReference, paramWeakReference1, paramString, paramInt1, paramInt2, paramObject, paramMap, paramBoolean1, paramBoolean2, paramInt3, bool);
    }
  }
  
  private static SpannableStringBuilder a(WeakReference<com.vent.a> paramWeakReference, WeakReference<?> paramWeakReference1, String paramString, int paramInt1, int paramInt2, Object paramObject, Map<String, r> paramMap, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, boolean paramBoolean3)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramWeakReference = null;
      return paramWeakReference;
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    int i7 = paramString.length();
    int k = 0;
    int j = 0;
    int m = -1;
    int i = 0;
    label38:
    int i2 = j;
    int n = i;
    int i1 = m;
    if (i < i7)
    {
      if (k < paramInt1) {
        break label311;
      }
      i2 = j;
      n = i;
      i1 = m;
      if (paramInt3 != 2)
      {
        i2 = j;
        n = i;
        i1 = m;
        if (m >= 0)
        {
          if (j >= i) {
            break label1947;
          }
          paramInt1 = localSpannableStringBuilder.length();
          localSpannableStringBuilder.replace(paramInt1, paramInt1, paramString, j, i);
          j = i;
          paramInt1 = i;
        }
      }
    }
    for (;;)
    {
      label131:
      if (paramInt1 < i7)
      {
        paramInt2 = paramString.charAt(paramInt1);
        if ((paramInt2 == 95) && ((paramInt1 == i7 - 1) || (Character.isWhitespace(paramString.charAt(paramInt1 + 1)))))
        {
          if ((m != k) && (paramInt3 == 0) && (!bb.cic)) {
            localSpannableStringBuilder.setSpan(new f(), m, k, 33);
          }
          i1 = -1;
          n = paramInt1;
          i2 = j;
        }
      }
      for (;;)
      {
        if (i2 < n)
        {
          paramInt1 = localSpannableStringBuilder.length();
          localSpannableStringBuilder.replace(paramInt1, paramInt1, paramString, i2, n);
        }
        paramWeakReference = localSpannableStringBuilder;
        if (paramInt3 == 2) {
          break;
        }
        paramWeakReference = localSpannableStringBuilder;
        if (i1 < 0) {
          break;
        }
        localSpannableStringBuilder.insert(i1, "_");
        return localSpannableStringBuilder;
        if (paramInt2 == 10)
        {
          localSpannableStringBuilder.insert(m, "_");
          i1 = -1;
          i2 = j;
          n = paramInt1;
        }
        else
        {
          paramInt1 += 1;
          break label131;
          label311:
          i2 = paramString.charAt(i);
          if ((paramBoolean3) && (i2 >= 8192) && (cnf != null))
          {
            n = j;
            if (j < i)
            {
              n = localSpannableStringBuilder.length();
              localSpannableStringBuilder.replace(n, n, paramString, j, i);
              n = i;
            }
            j = 0;
            i1 = k;
            int i3;
            int i6;
            int i5;
            if ((i2 >= 55296) && (i2 <= 56319) && (i + j < i7 - 1))
            {
              i3 = paramString.charAt(i + j + 1);
              if ((i3 >= 56320) && (i3 <= 57343))
              {
                i6 = i3 + ((i2 - 55296) * 1024 + 65536) - 56320;
                i5 = 2;
              }
            }
            int i4;
            for (;;)
            {
              if ((i6 >= 131072) || (cnf[i6] == 0))
              {
                i4 = j;
                i3 = i1;
                if (i6 != 8205) {
                  break label603;
                }
                i4 = j;
                i3 = i1;
                if (j <= 0) {
                  break label603;
                }
              }
              if (i6 != 8419)
              {
                i2 = i1;
                if (i6 != 65039) {}
              }
              else
              {
                i2 = i1;
                if (i1 > 0)
                {
                  i2 = i1;
                  if (j == 0) {
                    i2 = i1 - 1;
                  }
                }
              }
              j += i5;
              i4 = j;
              i3 = i2;
              if (i + j >= i7) {
                break label603;
              }
              i3 = paramString.charAt(i + j);
              i1 = i2;
              i2 = i3;
              break;
              i5 = 1;
              i6 = i2;
            }
            label603:
            if (i4 > 0)
            {
              i += i4;
              j = localSpannableStringBuilder.length();
              localSpannableStringBuilder.replace(j, j, paramString, n, i);
              k += i4;
              localSpannableStringBuilder.setSpan(new d(), i3, k, 33);
              j = i;
              break label38;
            }
            i1 = paramString.charAt(i);
            j = n;
          }
          for (;;)
          {
            Object localObject3;
            Object localObject1;
            label845:
            Object localObject2;
            if ((i1 == 35) && (paramInt3 == 0) && ((i == 0) || (e(paramString.charAt(i - 1))) || (paramString.charAt(i - 1) == '_')))
            {
              if (j < i)
              {
                n = localSpannableStringBuilder.length();
                localSpannableStringBuilder.replace(n, n, paramString, j, i);
              }
              j = i + 1;
              while (j < i7)
              {
                n = paramString.charAt(j);
                if ((!Character.isLetter(n)) && (!Character.isDigit(n))) {
                  break;
                }
                j += 1;
              }
              localObject3 = paramString.substring(i, j);
              localSpannableStringBuilder.append((CharSequence)localObject3);
              n = k + ((String)localObject3).length();
              if (j > i + 1)
              {
                if (!paramBoolean1) {
                  break label908;
                }
                localObject1 = paramWeakReference;
                if (!paramBoolean1) {
                  break label914;
                }
              }
              label908:
              label914:
              for (localObject2 = paramWeakReference1;; localObject2 = null)
              {
                localSpannableStringBuilder.setSpan(new com.vent.c.e((WeakReference)localObject1, (WeakReference)localObject2, paramInt2, (String)localObject3), n - ((String)localObject3).length(), n, 33);
                i = j;
                k = j;
                j = i;
                i = k;
                k = n;
                break;
                localObject1 = null;
                break label845;
              }
            }
            if ((i1 == 95) && (paramInt3 != 2))
            {
              n = j;
              if (j < i)
              {
                n = localSpannableStringBuilder.length();
                localSpannableStringBuilder.replace(n, n, paramString, j, i);
                n = i;
              }
              if (m < 0)
              {
                if ((i != 0) && (!Character.isWhitespace(paramString.charAt(i - 1)))) {
                  break label1911;
                }
                i += 1;
                j = i;
                m = k;
                break;
              }
              if ((i != i7 - 1) && (!Character.isWhitespace(paramString.charAt(i + 1)))) {
                break label1911;
              }
              if ((m != k) && (paramInt3 == 0) && (!bb.cic)) {
                localSpannableStringBuilder.setSpan(new f(), m, k, 33);
              }
              i += 1;
              j = i;
              m = -1;
              break;
            }
            n = j;
            if (m >= 0)
            {
              n = j;
              if (i1 == 10)
              {
                n = j;
                if (paramInt3 != 2)
                {
                  n = j;
                  if (j < i)
                  {
                    n = localSpannableStringBuilder.length();
                    localSpannableStringBuilder.replace(n, n, paramString, j, i);
                    n = i;
                  }
                  localSpannableStringBuilder.insert(m, "_");
                  i2 = k + 1;
                  j = -1;
                }
              }
            }
            for (k = n;; k = n)
            {
              m = k;
              if (i1 == 64)
              {
                m = k;
                if (i + 2 < i7)
                {
                  n = k;
                  if (paramString.charAt(i + 1) == '{')
                  {
                    n = k;
                    if (k < i)
                    {
                      m = localSpannableStringBuilder.length();
                      localSpannableStringBuilder.replace(m, m, paramString, k, i);
                      n = i;
                    }
                    k = paramString.indexOf('}', i + 2);
                    if (k > i + 2)
                    {
                      k += 1;
                      if (paramObject != null)
                      {
                        localObject3 = new m(paramString.substring(i + 2, k - 1));
                        label1332:
                        label1365:
                        label1398:
                        Object localObject4;
                        if ((paramObject instanceof Map))
                        {
                          localObject1 = (x)((Map)paramObject).get(localObject3);
                          if (localObject1 == null) {
                            break label1558;
                          }
                          if (!paramBoolean2) {
                            break label1530;
                          }
                          localObject2 = "@" + ((x)localObject1).username;
                          localSpannableStringBuilder.append((CharSequence)localObject2);
                          n = i2 + ((CharSequence)localObject2).length();
                          if (paramInt3 == 0)
                          {
                            if (!paramBoolean1) {
                              break label1540;
                            }
                            localObject3 = paramWeakReference;
                            if (!paramBoolean1) {
                              break label1546;
                            }
                            localObject4 = paramWeakReference1;
                            label1406:
                            if (paramBoolean2) {
                              break label1552;
                            }
                          }
                        }
                        label1530:
                        label1540:
                        label1546:
                        label1552:
                        for (boolean bool = true;; bool = false)
                        {
                          localSpannableStringBuilder.setSpan(new i((WeakReference)localObject3, (WeakReference)localObject4, (x)localObject1, paramInt2, bool), n - ((CharSequence)localObject2).length(), n, 33);
                          i = k;
                          m = j;
                          j = i;
                          i = k;
                          k = n;
                          break;
                          localObject2 = null;
                          localObject4 = ((List)paramObject).iterator();
                          do
                          {
                            localObject1 = localObject2;
                            if (!((Iterator)localObject4).hasNext()) {
                              break;
                            }
                            localObject1 = (x)((Iterator)localObject4).next();
                          } while (!m.b(((x)localObject1).cjy, (m)localObject3));
                          break label1332;
                          localObject2 = ((x)localObject1).username;
                          break label1365;
                          localObject3 = null;
                          break label1398;
                          localObject4 = null;
                          break label1406;
                        }
                      }
                      label1558:
                      localSpannableStringBuilder.append(paramString.substring(i, k));
                      n = i2 + (k - i);
                      i = k;
                      m = j;
                      j = i;
                      i = k;
                      k = n;
                      break;
                    }
                  }
                  m = n;
                  if (paramString.charAt(i + 1) == '[')
                  {
                    m = n;
                    if (n < i)
                    {
                      k = localSpannableStringBuilder.length();
                      localSpannableStringBuilder.replace(k, k, paramString, n, i);
                      m = i;
                    }
                    k = paramString.indexOf(']', i + 2);
                    if (k > i + 2)
                    {
                      k += 1;
                      if (paramMap != null)
                      {
                        localObject2 = (r)paramMap.get(paramString.substring(i + 2, k - 1));
                        if (localObject2 != null)
                        {
                          if ((paramInt3 == 0) && (!TextUtils.isEmpty(((r)localObject2).ckB))) {}
                          for (localObject1 = ((r)localObject2).ckB;; localObject1 = ((r)localObject2).ckA)
                          {
                            localSpannableStringBuilder.append((CharSequence)localObject1);
                            n = i2 + ((CharSequence)localObject1).length();
                            if (paramInt3 == 0) {
                              localSpannableStringBuilder.setSpan(new g((r)localObject2, paramInt2, paramBoolean1), n - ((CharSequence)localObject1).length(), n, 33);
                            }
                            i = k;
                            m = j;
                            j = i;
                            i = k;
                            k = n;
                            break;
                          }
                        }
                      }
                      localSpannableStringBuilder.append(paramString.substring(i, k));
                      n = i2 + (k - i);
                      i = k;
                      m = j;
                      j = i;
                      i = k;
                      k = n;
                      break;
                    }
                  }
                }
              }
              n = i2 + 1;
              k = j;
              i += 1;
              j = m;
              m = k;
              k = n;
              break;
              label1911:
              i2 = k;
              j = m;
            }
            i1 = i2;
          }
          i2 = j;
          n = paramInt1;
          i1 = m;
        }
      }
      label1947:
      paramInt1 = i;
    }
  }
  
  public static SpannableStringBuilder a(WeakReference<com.vent.a> paramWeakReference, WeakReference<?> paramWeakReference1, String paramString, int paramInt, Object paramObject, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (bb.cif != 1) {}
    for (boolean bool = true;; bool = false) {
      return a(paramWeakReference, paramWeakReference1, paramString, Integer.MAX_VALUE, paramInt, paramObject, null, paramBoolean1, paramBoolean2, 0, bool);
    }
  }
  
  public static CharSequence a(Context paramContext, int paramInt, int[] paramArrayOfInt, boolean paramBoolean)
  {
    if (paramContext == null) {
      return null;
    }
    Object localObject = paramContext.getString(paramInt);
    paramInt = 0;
    SpannableString localSpannableString = new SpannableString(Html.fromHtml((String)localObject));
    boolean bool = MyApplication.br(paramContext);
    int k = localSpannableString.length();
    int j;
    for (int i = 0; i < k; i = j)
    {
      j = localSpannableString.nextSpanTransition(i, k, ImageSpan.class);
      ImageSpan[] arrayOfImageSpan = (ImageSpan[])localSpannableString.getSpans(i, j, ImageSpan.class);
      int m = arrayOfImageSpan.length;
      i = 0;
      if (i < m)
      {
        ImageSpan localImageSpan = arrayOfImageSpan[i];
        if ((paramBoolean) && (bool))
        {
          localObject = android.support.v4.a.a.a.f(paramContext.getResources().getDrawable(paramArrayOfInt[paramInt]).mutate());
          ((Drawable)localObject).setBounds(0, 0, ((Drawable)localObject).getIntrinsicWidth(), ((Drawable)localObject).getIntrinsicHeight());
          android.support.v4.a.a.a.a((Drawable)localObject, -1);
        }
        for (localObject = new ImageSpan((Drawable)localObject, 1);; localObject = new ImageSpan(paramContext, paramArrayOfInt[paramInt], 1))
        {
          localSpannableString.setSpan(localObject, localSpannableString.getSpanStart(localImageSpan), localSpannableString.getSpanEnd(localImageSpan), 18);
          paramInt += 1;
          if (paramInt == paramArrayOfInt.length) {
            break label233;
          }
          i += 1;
          break;
        }
      }
    }
    label233:
    return localSpannableString;
  }
  
  public static CharSequence a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (((paramCharSequence1 instanceof Spannable)) || ((paramCharSequence2 instanceof Spannable)))
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramCharSequence1);
      if ((paramCharSequence1 instanceof Spannable)) {
        TextUtils.copySpansFrom((Spannable)paramCharSequence1, 0, paramCharSequence1.length(), CharacterStyle.class, localSpannableStringBuilder, 0);
      }
      localSpannableStringBuilder.append(paramCharSequence2);
      if ((paramCharSequence2 instanceof Spannable)) {
        TextUtils.copySpansFrom((Spannable)paramCharSequence2, 0, paramCharSequence2.length(), CharacterStyle.class, localSpannableStringBuilder, paramCharSequence1.length());
      }
      return localSpannableStringBuilder;
    }
    return new StringBuilder(paramCharSequence1).append(paramCharSequence2);
  }
  
  private static String a(String paramString, Calendar paramCalendar)
  {
    if (!cnl) {
      return paramString;
    }
    int i = paramCalendar.get(11);
    if (i < 6) {
      return paramString + cnm;
    }
    if (i < 12) {
      return paramString + cnn;
    }
    if (i < 18) {
      return paramString + cno;
    }
    return paramString + cnp;
  }
  
  public static String a(String paramString, Map<String, String> paramMap)
  {
    paramString = new StringBuilder(paramString);
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      String str = (String)((Map.Entry)localObject).getKey();
      int j = str.length();
      localObject = (String)((Map.Entry)localObject).getValue();
      int k = ((String)localObject).length();
      for (int i = paramString.indexOf(str, 0); i >= 0; i = paramString.indexOf(str, i + k)) {
        paramString.replace(i, i + j, (String)localObject);
      }
    }
    return paramString.toString();
  }
  
  public static void a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    TextView localTextView = (TextView)paramActivity.findViewById(paramInt1);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    SpannableString localSpannableString = new SpannableString(Html.fromHtml(paramActivity.getString(paramInt2)));
    int i = paramActivity.getResources().getColor(2131099755);
    int j = localSpannableString.length();
    for (paramInt1 = 0; paramInt1 < j; paramInt1 = paramInt2)
    {
      paramInt2 = localSpannableString.nextSpanTransition(paramInt1, j, URLSpan.class);
      paramActivity = (URLSpan[])localSpannableString.getSpans(paramInt1, paramInt2, URLSpan.class);
      int k = paramActivity.length;
      paramInt1 = 0;
      while (paramInt1 < k)
      {
        URLSpan localURLSpan = paramActivity[paramInt1];
        localSpannableString.setSpan(new com.vent.c.a(localURLSpan, i), localSpannableString.getSpanStart(localURLSpan), localSpannableString.getSpanEnd(localURLSpan), 18);
        paramInt1 += 1;
      }
    }
    localTextView.setText(localSpannableString);
    localTextView.setLinkTextColor(i);
    localTextView.setLinksClickable(true);
  }
  
  public static void a(EditText paramEditText, TextWatcher paramTextWatcher, CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i4;
    int i;
    if ((bb.cif == 2) && (paramInt2 > 0) && (cnf != null))
    {
      i4 = paramInt1 + paramInt2;
      paramCharSequence = new SpannableStringBuilder(paramCharSequence);
      d[] arrayOfd = (d[])paramCharSequence.getSpans(paramInt1, i4, d.class);
      if ((arrayOfd == null) || (arrayOfd.length <= 0)) {
        break label433;
      }
      i = arrayOfd.length;
      paramInt2 = 0;
      while (paramInt2 < i)
      {
        paramCharSequence.removeSpan(arrayOfd[paramInt2]);
        paramInt2 += 1;
      }
    }
    label356:
    label430:
    label433:
    for (paramInt2 = 1;; paramInt2 = 0)
    {
      i = paramInt1;
      int m = paramInt2;
      paramInt2 = i;
      if (paramInt2 < i4)
      {
        int k = paramCharSequence.charAt(paramInt2);
        if (k < 8192) {
          break label430;
        }
        i = 0;
        int j = paramInt2;
        int n;
        int i2;
        if ((k >= 55296) && (k <= 56319) && (paramInt2 + i < i4 - 1))
        {
          n = paramCharSequence.charAt(paramInt2 + i + 1);
          if ((n >= 56320) && (n <= 57343))
          {
            i2 = n + ((k - 55296) * 1024 + 65536) - 56320;
            n = 2;
          }
        }
        int i3;
        int i1;
        for (;;)
        {
          if ((i2 >= 131072) || (cnf[i2] == 0))
          {
            i3 = i;
            i1 = j;
            if (i2 != 8205) {
              break label356;
            }
            i3 = i;
            i1 = j;
            if (i <= 0) {
              break label356;
            }
          }
          if (i2 != 8419)
          {
            k = j;
            if (i2 != 65039) {}
          }
          else
          {
            k = j;
            if (j > 0)
            {
              k = j;
              if (i == 0) {
                k = j - 1;
              }
            }
          }
          i += n;
          i3 = i;
          i1 = k;
          if (paramInt2 + i >= i4) {
            break label356;
          }
          n = paramCharSequence.charAt(paramInt2 + i);
          j = k;
          k = n;
          break;
          n = 1;
          i2 = k;
        }
        if (i3 <= 0) {
          break label430;
        }
        paramInt2 = i3 + paramInt2;
        paramCharSequence.setSpan(new d(), i1, paramInt2, 33);
        m = 1;
      }
      for (;;)
      {
        paramInt2 += 1;
        break;
        if (m != 0)
        {
          paramEditText.removeTextChangedListener(paramTextWatcher);
          paramEditText.getEditableText().replace(paramInt1, i4, paramCharSequence, paramInt1, i4);
          paramEditText.addTextChangedListener(paramTextWatcher);
        }
        return;
      }
    }
  }
  
  public static String b(Date paramDate1, Date paramDate2)
  {
    if ((paramDate2 != null) && ((paramDate1 == null) || (!paramDate2.equals(paramDate1))))
    {
      paramDate1 = m(paramDate2);
      if (paramDate1 == null) {
        return null;
      }
      return cny.replace("%1$s", paramDate1);
    }
    if (paramDate1 != null) {
      return m(paramDate1);
    }
    return "";
  }
  
  public static void bK(Context paramContext)
  {
    cnz = DateFormatSymbols.getInstance(Locale.getDefault()).getWeekdays();
    cnm = paramContext.getString(2131689838);
    cnn = paramContext.getString(2131689840);
    cno = paramContext.getString(2131689837);
    cnp = paramContext.getString(2131689839);
    cnq = paramContext.getString(2131689781);
    cnr = paramContext.getString(2131689629);
    cns = paramContext.getString(2131689845);
    cnt = paramContext.getString(2131689472);
    cnu = paramContext.getString(2131689844);
    cnv = paramContext.getString(2131689483);
    cnw = paramContext.getString(2131689843);
    cnx = paramContext.getString(2131689847);
    cny = paramContext.getString(2131689816);
  }
  
  public static void bL(Context paramContext)
  {
    if (cmV == null) {}
    try
    {
      cmV = Typeface.createFromAsset(paramContext.getAssets(), "fonts/KlinicSlabBook.otf");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  /* Error */
  public static void bM(Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: iconst_0
    //   3: istore_2
    //   4: getstatic 628	com/vent/d/e:cnh	Z
    //   7: ifeq +4 -> 11
    //   10: return
    //   11: iconst_1
    //   12: putstatic 628	com/vent/d/e:cnh	Z
    //   15: aload_0
    //   16: invokevirtual 612	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   19: ldc_w 614
    //   22: invokestatic 620	android/graphics/Typeface:createFromAsset	(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    //   25: astore_3
    //   26: aload_3
    //   27: putstatic 630	com/vent/d/e:cmU	Landroid/graphics/Typeface;
    //   30: aload_3
    //   31: putstatic 608	com/vent/d/e:cmV	Landroid/graphics/Typeface;
    //   34: getstatic 633	com/vent/bb:chT	Z
    //   37: ifeq +230 -> 267
    //   40: getstatic 143	android/os/Build$VERSION:SDK_INT	I
    //   43: bipush 21
    //   45: if_icmplt +200 -> 245
    //   48: ldc_w 635
    //   51: iconst_0
    //   52: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   55: astore_3
    //   56: aload_3
    //   57: putstatic 641	com/vent/d/e:cmW	Landroid/graphics/Typeface;
    //   60: ldc_w 643
    //   63: iconst_0
    //   64: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   67: putstatic 645	com/vent/d/e:cmX	Landroid/graphics/Typeface;
    //   70: ldc_w 643
    //   73: iconst_2
    //   74: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   77: putstatic 647	com/vent/d/e:cmY	Landroid/graphics/Typeface;
    //   80: getstatic 143	android/os/Build$VERSION:SDK_INT	I
    //   83: bipush 16
    //   85: if_icmplt +171 -> 256
    //   88: ldc_w 649
    //   91: iconst_0
    //   92: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   95: astore_3
    //   96: aload_3
    //   97: putstatic 651	com/vent/d/e:cmZ	Landroid/graphics/Typeface;
    //   100: getstatic 220	com/vent/bb:cif	I
    //   103: iconst_1
    //   104: if_icmpeq -94 -> 10
    //   107: getstatic 653	com/vent/d/e:cne	Landroid/graphics/Typeface;
    //   110: ifnonnull -100 -> 10
    //   113: getstatic 143	android/os/Build$VERSION:SDK_INT	I
    //   116: bipush 19
    //   118: if_icmplt +299 -> 417
    //   121: aload_0
    //   122: invokevirtual 612	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   125: ldc_w 655
    //   128: invokestatic 620	android/graphics/Typeface:createFromAsset	(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    //   131: putstatic 653	com/vent/d/e:cne	Landroid/graphics/Typeface;
    //   134: getstatic 653	com/vent/d/e:cne	Landroid/graphics/Typeface;
    //   137: ifnonnull +314 -> 451
    //   140: ldc_w 657
    //   143: invokestatic 662	com/vent/d/c:eu	(Ljava/lang/String;)V
    //   146: aload_0
    //   147: invokevirtual 612	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   150: ldc_w 664
    //   153: invokestatic 620	android/graphics/Typeface:createFromAsset	(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    //   156: putstatic 653	com/vent/d/e:cne	Landroid/graphics/Typeface;
    //   159: iload_2
    //   160: istore_1
    //   161: iload_1
    //   162: istore_2
    //   163: getstatic 653	com/vent/d/e:cne	Landroid/graphics/Typeface;
    //   166: ifnonnull +11 -> 177
    //   169: ldc_w 666
    //   172: invokestatic 662	com/vent/d/c:eu	(Ljava/lang/String;)V
    //   175: iload_1
    //   176: istore_2
    //   177: getstatic 653	com/vent/d/e:cne	Landroid/graphics/Typeface;
    //   180: ifnull -170 -> 10
    //   183: ldc -10
    //   185: newarray <illegal type>
    //   187: putstatic 242	com/vent/d/e:cnf	[B
    //   190: aload_0
    //   191: invokevirtual 612	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   194: astore_3
    //   195: iload_2
    //   196: ifeq +234 -> 430
    //   199: ldc_w 668
    //   202: astore_0
    //   203: aload_3
    //   204: aload_0
    //   205: invokevirtual 674	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   208: astore_0
    //   209: aload_0
    //   210: getstatic 242	com/vent/d/e:cnf	[B
    //   213: invokevirtual 680	java/io/InputStream:read	([B)I
    //   216: pop
    //   217: aload_0
    //   218: invokevirtual 683	java/io/InputStream:close	()V
    //   221: ldc_w 684
    //   224: istore_1
    //   225: iload_1
    //   226: ldc_w 685
    //   229: if_icmpgt +208 -> 437
    //   232: getstatic 242	com/vent/d/e:cnf	[B
    //   235: iload_1
    //   236: iconst_1
    //   237: bastore
    //   238: iload_1
    //   239: iconst_1
    //   240: iadd
    //   241: istore_1
    //   242: goto -17 -> 225
    //   245: ldc_w 643
    //   248: iconst_1
    //   249: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   252: astore_3
    //   253: goto -197 -> 56
    //   256: ldc_w 643
    //   259: iconst_0
    //   260: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   263: astore_3
    //   264: goto -168 -> 96
    //   267: getstatic 143	android/os/Build$VERSION:SDK_INT	I
    //   270: bipush 26
    //   272: if_icmplt +54 -> 326
    //   275: ldc_w 635
    //   278: iconst_0
    //   279: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   282: putstatic 641	com/vent/d/e:cmW	Landroid/graphics/Typeface;
    //   285: ldc_w 643
    //   288: iconst_0
    //   289: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   292: putstatic 645	com/vent/d/e:cmX	Landroid/graphics/Typeface;
    //   295: ldc_w 643
    //   298: iconst_2
    //   299: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   302: putstatic 647	com/vent/d/e:cmY	Landroid/graphics/Typeface;
    //   305: ldc_w 649
    //   308: iconst_0
    //   309: invokestatic 639	android/graphics/Typeface:create	(Ljava/lang/String;I)Landroid/graphics/Typeface;
    //   312: putstatic 651	com/vent/d/e:cmZ	Landroid/graphics/Typeface;
    //   315: goto -215 -> 100
    //   318: astore_3
    //   319: aload_3
    //   320: invokevirtual 623	java/lang/Exception:printStackTrace	()V
    //   323: goto -223 -> 100
    //   326: getstatic 687	com/vent/d/e:cni	Z
    //   329: ifne +52 -> 381
    //   332: iconst_1
    //   333: putstatic 687	com/vent/d/e:cni	Z
    //   336: aload_0
    //   337: invokevirtual 612	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   340: astore_3
    //   341: aload_3
    //   342: ldc_w 689
    //   345: invokestatic 620	android/graphics/Typeface:createFromAsset	(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    //   348: putstatic 691	com/vent/d/e:cna	Landroid/graphics/Typeface;
    //   351: aload_3
    //   352: ldc_w 693
    //   355: invokestatic 620	android/graphics/Typeface:createFromAsset	(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    //   358: putstatic 695	com/vent/d/e:cnb	Landroid/graphics/Typeface;
    //   361: aload_3
    //   362: ldc_w 697
    //   365: invokestatic 620	android/graphics/Typeface:createFromAsset	(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    //   368: putstatic 699	com/vent/d/e:cnc	Landroid/graphics/Typeface;
    //   371: aload_3
    //   372: ldc_w 701
    //   375: invokestatic 620	android/graphics/Typeface:createFromAsset	(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    //   378: putstatic 703	com/vent/d/e:cnd	Landroid/graphics/Typeface;
    //   381: getstatic 691	com/vent/d/e:cna	Landroid/graphics/Typeface;
    //   384: putstatic 641	com/vent/d/e:cmW	Landroid/graphics/Typeface;
    //   387: getstatic 695	com/vent/d/e:cnb	Landroid/graphics/Typeface;
    //   390: putstatic 645	com/vent/d/e:cmX	Landroid/graphics/Typeface;
    //   393: getstatic 699	com/vent/d/e:cnc	Landroid/graphics/Typeface;
    //   396: putstatic 647	com/vent/d/e:cmY	Landroid/graphics/Typeface;
    //   399: getstatic 703	com/vent/d/e:cnd	Landroid/graphics/Typeface;
    //   402: putstatic 651	com/vent/d/e:cmZ	Landroid/graphics/Typeface;
    //   405: goto -305 -> 100
    //   408: astore_3
    //   409: aload_3
    //   410: invokevirtual 623	java/lang/Exception:printStackTrace	()V
    //   413: goto -32 -> 381
    //   416: astore_3
    //   417: iconst_0
    //   418: istore_1
    //   419: goto -285 -> 134
    //   422: astore_3
    //   423: aload_3
    //   424: invokevirtual 623	java/lang/Exception:printStackTrace	()V
    //   427: goto -266 -> 161
    //   430: ldc_w 705
    //   433: astore_0
    //   434: goto -231 -> 203
    //   437: getstatic 242	com/vent/d/e:cnf	[B
    //   440: ldc -9
    //   442: iconst_1
    //   443: bastore
    //   444: return
    //   445: astore_0
    //   446: aload_0
    //   447: invokevirtual 706	java/io/IOException:printStackTrace	()V
    //   450: return
    //   451: iload_1
    //   452: istore_2
    //   453: goto -276 -> 177
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	456	0	paramContext	Context
    //   1	451	1	i	int
    //   3	450	2	j	int
    //   25	239	3	localObject	Object
    //   318	2	3	localException1	Exception
    //   340	32	3	localAssetManager	android.content.res.AssetManager
    //   408	2	3	localException2	Exception
    //   416	1	3	localException3	Exception
    //   422	2	3	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   15	56	318	java/lang/Exception
    //   56	96	318	java/lang/Exception
    //   96	100	318	java/lang/Exception
    //   245	253	318	java/lang/Exception
    //   256	264	318	java/lang/Exception
    //   267	315	318	java/lang/Exception
    //   326	336	318	java/lang/Exception
    //   381	405	318	java/lang/Exception
    //   409	413	318	java/lang/Exception
    //   336	381	408	java/lang/Exception
    //   121	134	416	java/lang/Exception
    //   146	159	422	java/lang/Exception
    //   190	195	445	java/io/IOException
    //   203	221	445	java/io/IOException
    //   232	238	445	java/io/IOException
    //   437	444	445	java/io/IOException
  }
  
  public static int c(CharSequence paramCharSequence, int paramInt)
  {
    if (TextUtils.isEmpty(paramCharSequence)) {
      return -1;
    }
    int m = paramInt * cng;
    int n = paramCharSequence.length();
    int i = 0;
    paramInt = 0;
    int i1;
    int j;
    if ((i < m) && (paramInt < n))
    {
      i1 = TextUtils.indexOf(paramCharSequence, '\n', paramInt);
      if (i1 < 0)
      {
        j = n - paramInt;
        if (i + j >= m) {
          paramInt = Math.min(m - i, j) + paramInt;
        }
      }
    }
    for (;;)
    {
      return paramInt;
      paramInt = -1;
      continue;
      int i2 = i1 - paramInt;
      int k;
      if (i2 != 0)
      {
        k = (cng + i2 - 1) / cng * cng;
        j = k;
        if (i + k >= m) {
          paramInt = Math.min(m - i, i2) + paramInt;
        }
      }
      else
      {
        k = cng;
        j = k;
        if (i + k >= m) {
          continue;
        }
      }
      paramInt = i1 + 1;
      i = j + i;
      break;
      paramInt = -1;
    }
  }
  
  public static boolean e(char paramChar)
  {
    if (Character.isWhitespace(paramChar)) {
      return true;
    }
    switch (Character.getType(paramChar))
    {
    }
    return false;
  }
  
  public static String eT(int paramInt)
  {
    String str2 = Integer.toString(0xFFFFFF & paramInt, 16).toUpperCase();
    String str1 = str2;
    if (str2.length() < 6) {
      str1 = "000000".substring(str2.length()) + str2;
    }
    return str1;
  }
  
  public static String eU(int paramInt)
  {
    String str2 = Integer.toString(paramInt & 0xFF, 16);
    String str1 = str2;
    if (str2.length() < 2) {
      str1 = "0" + str2;
    }
    return str1;
  }
  
  public static String ew(String paramString)
  {
    int n = paramString.length();
    int i = 0;
    while ((i < n) && (paramString.charAt(i) <= ' ')) {
      i += 1;
    }
    int j = i;
    int k;
    int m;
    if (j > 0)
    {
      int i1 = paramString.charAt(j - 1);
      k = j;
      m = n;
      if (i1 != 10)
      {
        if (i1 != 13) {
          break label100;
        }
        m = n;
        k = j;
      }
    }
    for (;;)
    {
      if ((k < m) && (paramString.charAt(m - 1) <= ' '))
      {
        m -= 1;
        continue;
        label100:
        j -= 1;
        break;
      }
      String str;
      if (k <= 0)
      {
        str = paramString;
        if (m >= paramString.length()) {}
      }
      else
      {
        str = paramString.substring(k, m);
      }
      return str;
      k = i;
      m = n;
    }
  }
  
  public static String ex(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (Build.VERSION.SDK_INT == 23)
      {
        str = paramString;
        if (paramString.indexOf('­') >= 0)
        {
          for (;;)
          {
            str = paramString;
            if (paramString.length() <= 0) {
              break;
            }
            str = paramString;
            if (paramString.charAt(0) != '­') {
              break;
            }
            paramString = paramString.substring(1);
          }
          while ((str.length() > 0) && (str.charAt(str.length() - 1) == '­')) {
            str = str.substring(0, str.length() - 1);
          }
          str = str.replace("\n­", "\n").replace("­\n", "\n");
        }
      }
    }
    return str;
  }
  
  public static String l(Date paramDate)
  {
    int i = 1;
    if (paramDate == null) {
      return null;
    }
    long l1 = System.currentTimeMillis();
    long l2 = paramDate.getTime();
    long l3 = l1 - l2;
    if ((l3 < 172800000L) || (l3 > 172800000L)) {}
    for (i = 0; i != 0; i = 0)
    {
      label44:
      return ((DateFormat)cnA.get()).format(paramDate);
      Calendar localCalendar1 = Calendar.getInstance();
      Calendar localCalendar2 = Calendar.getInstance();
      localCalendar1.setTimeInMillis(l1);
      localCalendar2.setTimeInMillis(l2);
      if ((localCalendar1.get(1) == localCalendar2.get(1)) && (localCalendar1.get(6) == localCalendar2.get(6))) {
        break label44;
      }
    }
    return ((DateFormat)cnB.get()).format(paramDate);
  }
  
  public static String m(Date paramDate)
  {
    switch (bb.ciw)
    {
    default: 
      if (paramDate == null) {
        return "";
      }
      long l1 = System.currentTimeMillis();
      long l2 = (l1 - paramDate.getTime() + 500L) / 1000L;
      if (l2 < -300L) {
        return cnq;
      }
      if (l2 < 10L) {
        return cnr;
      }
      long l3 = (30L + l2) / 60L;
      if (l3 == 0L) {
        return cns.replace("%1$d", String.valueOf(l2));
      }
      if (l3 == 1L) {
        return cnt;
      }
      if (l3 < 60L) {
        return cnu.replace("%1$d", String.valueOf(l3));
      }
      l3 = (1800L + l2) / 3600L;
      if (l3 == 1L) {
        return cnv;
      }
      if (l3 < 6L) {
        return cnw.replace("%1$d", String.valueOf(l3));
      }
      Object localObject1 = null;
      if (l2 < 172800L)
      {
        localObject2 = Calendar.getInstance();
        ((Calendar)localObject2).setTime(paramDate);
        Calendar localCalendar = Calendar.getInstance();
        localCalendar.setTimeInMillis(l1 - 86400000L);
        localObject1 = localObject2;
        if (((Calendar)localObject2).get(1) == localCalendar.get(1))
        {
          localObject1 = localObject2;
          if (((Calendar)localObject2).get(6) == localCalendar.get(6)) {
            return a(cnx, (Calendar)localObject2);
          }
        }
      }
      if (l3 < 24L) {
        return cnw.replace("%1$d", String.valueOf(l3));
      }
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = Calendar.getInstance();
        ((Calendar)localObject2).setTime(paramDate);
      }
      if (l2 < 518400L) {
        return a(cnz[localObject2.get(7)], (Calendar)localObject2);
      }
      return ((DateFormat)cnB.get()).format(paramDate);
    }
    return l(paramDate);
  }
  
  public static CharSequence s(CharSequence paramCharSequence)
  {
    CharSequence localCharSequence = paramCharSequence;
    if (bb.cif != 1) {
      localCharSequence = u(paramCharSequence);
    }
    return localCharSequence;
  }
  
  public static CharSequence t(CharSequence paramCharSequence)
  {
    CharSequence localCharSequence = paramCharSequence;
    if (bb.cif == 2) {
      localCharSequence = u(paramCharSequence);
    }
    return localCharSequence;
  }
  
  public static CharSequence u(CharSequence paramCharSequence)
  {
    if ((TextUtils.isEmpty(paramCharSequence)) || (cnf == null)) {}
    SpannableString localSpannableString;
    int n;
    label268:
    do
    {
      return paramCharSequence;
      localSpannableString = new SpannableString(paramCharSequence);
      int i5 = localSpannableString.length();
      int i = 0;
      int j;
      for (n = 0; i < i5; n = j)
      {
        int m = localSpannableString.charAt(i);
        int k = i;
        j = n;
        if (m >= 8192)
        {
          j = 0;
          k = i;
          int i1;
          int i4;
          int i3;
          if ((m >= 55296) && (m <= 56319) && (i + j < i5 - 1))
          {
            i1 = localSpannableString.charAt(i + j + 1);
            if ((i1 >= 56320) && (i1 <= 57343))
            {
              i4 = i1 + ((m - 55296) * 1024 + 65536) - 56320;
              i3 = 2;
            }
          }
          int i2;
          for (;;)
          {
            if ((i4 >= 131072) || (cnf[i4] == 0))
            {
              i2 = j;
              i1 = k;
              if (i4 != 8205) {
                break label268;
              }
              i2 = j;
              i1 = k;
              if (j <= 0) {
                break label268;
              }
            }
            if (i4 != 8419)
            {
              m = k;
              if (i4 != 65039) {}
            }
            else
            {
              m = k;
              if (k > 0)
              {
                m = k;
                if (j == 0) {
                  m = k - 1;
                }
              }
            }
            j += i3;
            i2 = j;
            i1 = m;
            if (i + j >= i5) {
              break label268;
            }
            i1 = localSpannableString.charAt(i + j);
            k = m;
            m = i1;
            break;
            i3 = 1;
            i4 = m;
          }
          k = i;
          j = n;
          if (i2 > 0)
          {
            k = i + i2;
            localSpannableString.setSpan(new d(), i1, k, 33);
            j = 1;
          }
        }
        i = k + 1;
      }
    } while (n == 0);
    return localSpannableString;
  }
  
  public static void u(Activity paramActivity)
  {
    int i = c.bJ(paramActivity);
    if (i != cnj)
    {
      cnj = i;
      Paint localPaint = new Paint();
      Rect localRect = new Rect();
      localPaint.setTypeface(cmX);
      localPaint.setTextSize(paramActivity.getResources().getDimension(2131165498));
      localPaint.getTextBounds("@The #quick HTTPS://brown _fox_ *jumps* over the lazy dog. 😀", 0, 61, localRect);
      float f = localRect.width() / 61.0F;
      cng = (int)((i - MyApplication.cgh * 2) / f);
    }
  }
  
  public static CharSequence v(CharSequence paramCharSequence)
  {
    Object localObject = paramCharSequence;
    if (paramCharSequence != null)
    {
      localObject = paramCharSequence;
      if (Build.VERSION.SDK_INT == 23) {
        localObject = ex(paramCharSequence.toString());
      }
    }
    return (CharSequence)localObject;
  }
  
  private static final class a
    implements Comparator<CharacterStyle>
  {
    private final SpannableStringBuilder cnC;
    
    a(SpannableStringBuilder paramSpannableStringBuilder)
    {
      this.cnC = paramSpannableStringBuilder;
    }
  }
  
  public static final class b
    extends ArrayAdapter<Object>
    implements Filterable
  {
    final String[][] bYq;
    final int bZf;
    private final Filter cnD = new Filter()
    {
      public final CharSequence convertResultToString(Object paramAnonymousObject)
      {
        if ((paramAnonymousObject instanceof x)) {
          return "@" + paramAnonymousObject.toString();
        }
        if ((paramAnonymousObject instanceof String)) {
          return (String)paramAnonymousObject;
        }
        return paramAnonymousObject.toString();
      }
      
      protected final Filter.FilterResults performFiltering(CharSequence paramAnonymousCharSequence)
      {
        Filter.FilterResults localFilterResults = new Filter.FilterResults();
        if (paramAnonymousCharSequence != null)
        {
          paramAnonymousCharSequence = paramAnonymousCharSequence.toString();
          if ((paramAnonymousCharSequence.length() < 2) || (!paramAnonymousCharSequence.startsWith("@"))) {
            break label151;
          }
          paramAnonymousCharSequence = paramAnonymousCharSequence.toLowerCase().substring(1);
          paramAnonymousCharSequence = az.a("GET", bb.Er() + "api/v1/users/autocomplete.json?per_page=20&q=" + Uri.encode(paramAnonymousCharSequence), e.b.this.bYq, null);
        }
        label151:
        while ((paramAnonymousCharSequence.length() <= 0) || (!paramAnonymousCharSequence.startsWith("#"))) {
          try
          {
            if ((paramAnonymousCharSequence.bYo >= 200) && (paramAnonymousCharSequence.bYo <= 299))
            {
              paramAnonymousCharSequence = b.a(x.class, paramAnonymousCharSequence.bYp.getJSONArray("users"), false, Integer.MAX_VALUE);
              if (paramAnonymousCharSequence != null)
              {
                localFilterResults.values = paramAnonymousCharSequence;
                localFilterResults.count = paramAnonymousCharSequence.size();
              }
            }
            return localFilterResults;
          }
          catch (Exception paramAnonymousCharSequence)
          {
            paramAnonymousCharSequence.printStackTrace();
            return localFilterResults;
          }
        }
        paramAnonymousCharSequence = paramAnonymousCharSequence.toLowerCase();
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator;
        String str;
        synchronized (e.cnk)
        {
          localIterator = e.cnk.iterator();
          while (localIterator.hasNext())
          {
            str = (String)localIterator.next();
            if (str.toLowerCase().startsWith(paramAnonymousCharSequence)) {
              localArrayList.add(str);
            }
          }
        }
        synchronized (bb.ciq)
        {
          localIterator = bb.ciq.iterator();
          while (localIterator.hasNext())
          {
            str = (String)localIterator.next();
            if ((str.toLowerCase().startsWith(paramAnonymousCharSequence)) && (!localArrayList.contains(str))) {
              localArrayList.add(str);
            }
          }
        }
        Collections.sort(localArrayList, new Comparator() {});
        localFilterResults.values = localArrayList;
        localFilterResults.count = localArrayList.size();
        return localFilterResults;
      }
      
      protected final void publishResults(CharSequence paramAnonymousCharSequence, Filter.FilterResults paramAnonymousFilterResults)
      {
        e.b.this.clear();
        if (paramAnonymousFilterResults.values != null)
        {
          paramAnonymousCharSequence = ((List)paramAnonymousFilterResults.values).iterator();
          while (paramAnonymousCharSequence.hasNext())
          {
            paramAnonymousFilterResults = paramAnonymousCharSequence.next();
            e.b.this.add(paramAnonymousFilterResults);
          }
        }
        e.b.this.notifyDataSetChanged();
      }
    };
    
    public b(Context paramContext, int paramInt)
    {
      super(17367050);
      this.bZf = paramInt;
      this.bYq = ((String[][])c.d(bb.bYq));
    }
    
    public final Filter getFilter()
    {
      return this.cnD;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Object localObject2 = getItem(paramInt);
      Object localObject1;
      if ((localObject2 instanceof x))
      {
        if (paramView == null) {
          break label316;
        }
        localObject1 = paramView.getTag();
        if (!(localObject1 instanceof b)) {
          break label316;
        }
        paramView = (ViewGroup)paramView;
        localObject1 = (b)localObject1;
      }
      for (;;)
      {
        if (paramView == null)
        {
          paramViewGroup = (ViewGroup)LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427544, paramViewGroup, false);
          paramView = new b((byte)0);
          paramViewGroup.setTag(paramView);
          paramView.bUF = ((CachedImageView)paramViewGroup.findViewById(2131296818));
          paramView.bUF.aH(MyApplication.cgk, MyApplication.cgk);
          paramView.bUF.setDefaultImage(2131231019);
          paramView.bZI = ((TextView)paramViewGroup.findViewById(2131296981));
        }
        for (;;)
        {
          localObject1 = (x)localObject2;
          c.a((x)localObject1, paramView.bUF, MyApplication.cgk, MyApplication.cgm);
          paramView.bUF.setTag(paramView);
          paramView.bZI.setText(((x)localObject1).username);
          return paramViewGroup;
          if ((localObject2 instanceof String))
          {
            if (paramView == null) {
              break label300;
            }
            localObject1 = paramView.getTag();
            if (!(localObject1 instanceof a)) {
              break label300;
            }
            paramView = (ViewGroup)paramView;
            localObject1 = (a)localObject1;
          }
          for (;;)
          {
            if (paramView == null)
            {
              paramViewGroup = (ViewGroup)LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427527, paramViewGroup, false);
              paramView = new a((byte)0);
              paramView.cnG = ((TextView)paramViewGroup.findViewById(16908308));
              paramView.cnG.setTextColor(this.bZf);
            }
            for (;;)
            {
              localObject1 = (String)localObject2;
              paramView.cnG.setText((CharSequence)localObject1);
              return paramViewGroup;
              throw new AssertionError();
              paramViewGroup = paramView;
              paramView = (View)localObject1;
            }
            label300:
            localObject1 = null;
            paramView = null;
          }
          paramViewGroup = paramView;
          paramView = (View)localObject1;
        }
        label316:
        localObject1 = null;
        paramView = null;
      }
    }
    
    private static final class a
    {
      TextView cnG;
    }
    
    private static final class b
    {
      CachedImageView bUF;
      TextView bZI;
    }
  }
  
  public static final class c
    implements MultiAutoCompleteTextView.Tokenizer
  {
    public final int findTokenEnd(CharSequence paramCharSequence, int paramInt)
    {
      int i = paramCharSequence.length();
      while (paramInt < i)
      {
        if (Character.isWhitespace(paramCharSequence.charAt(paramInt))) {
          return paramInt;
        }
        paramInt += 1;
      }
      return i;
    }
    
    public final int findTokenStart(CharSequence paramCharSequence, int paramInt)
    {
      int i = paramInt;
      int j;
      for (;;)
      {
        j = i;
        if (i <= 0) {
          break;
        }
        j = i;
        if (Character.isWhitespace(paramCharSequence.charAt(i - 1))) {
          break;
        }
        i -= 1;
      }
      while ((j < paramInt) && (Character.isWhitespace(paramCharSequence.charAt(j)))) {
        j += 1;
      }
      return j;
    }
    
    public final CharSequence terminateToken(CharSequence paramCharSequence)
    {
      int i = paramCharSequence.length();
      while ((i > 0) && (Character.isWhitespace(paramCharSequence.charAt(i - 1)))) {
        i -= 1;
      }
      if ((i > 0) && (Character.isWhitespace(paramCharSequence.charAt(i - 1)))) {
        return paramCharSequence;
      }
      if ((paramCharSequence instanceof Spanned))
      {
        SpannableString localSpannableString = new SpannableString(paramCharSequence + " ");
        TextUtils.copySpansFrom((Spanned)paramCharSequence, 0, paramCharSequence.length(), Object.class, localSpannableString, 0);
        return localSpannableString;
      }
      return paramCharSequence + " ";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/d/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */