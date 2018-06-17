package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.v4.g.a;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.ae;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

final class fz
  extends iy
{
  fz(hz paramhz)
  {
    super(paramhz);
  }
  
  private static Boolean a(double paramDouble, lk paramlk)
  {
    try
    {
      paramlk = a(new BigDecimal(paramDouble), paramlk, Math.ulp(paramDouble));
      return paramlk;
    }
    catch (NumberFormatException paramlk) {}
    return null;
  }
  
  private static Boolean a(long paramLong, lk paramlk)
  {
    try
    {
      paramlk = a(new BigDecimal(paramLong), paramlk, 0.0D);
      return paramlk;
    }
    catch (NumberFormatException paramlk) {}
    return null;
  }
  
  private final Boolean a(li paramli, String paramString, ls[] paramArrayOfls, long paramLong)
  {
    if (paramli.aXA != null)
    {
      localObject1 = a(paramLong, paramli.aXA);
      if (localObject1 == null) {
        return null;
      }
      if (!((Boolean)localObject1).booleanValue()) {
        return Boolean.valueOf(false);
      }
    }
    Object localObject2 = new HashSet();
    Object localObject1 = paramli.aXy;
    int j = localObject1.length;
    int i = 0;
    Object localObject3;
    while (i < j)
    {
      localObject3 = localObject1[i];
      if (TextUtils.isEmpty(((lj)localObject3).aXF))
      {
        qP().aTd.j("null or empty param name in filter. event", qK().ch(paramString));
        return null;
      }
      ((Set)localObject2).add(((lj)localObject3).aXF);
      i += 1;
    }
    localObject1 = new a();
    j = paramArrayOfls.length;
    i = 0;
    if (i < j)
    {
      localObject3 = paramArrayOfls[i];
      if (((Set)localObject2).contains(((ls)localObject3).name))
      {
        if (((ls)localObject3).aYl == null) {
          break label209;
        }
        ((Map)localObject1).put(((ls)localObject3).name, ((ls)localObject3).aYl);
      }
      for (;;)
      {
        i += 1;
        break;
        label209:
        if (((ls)localObject3).aXk != null)
        {
          ((Map)localObject1).put(((ls)localObject3).name, ((ls)localObject3).aXk);
        }
        else
        {
          if (((ls)localObject3).aTr == null) {
            break label267;
          }
          ((Map)localObject1).put(((ls)localObject3).name, ((ls)localObject3).aTr);
        }
      }
      label267:
      qP().aTd.e("Unknown value for param. event, param", qK().ch(paramString), qK().ci(((ls)localObject3).name));
      return null;
    }
    paramArrayOfls = paramli.aXy;
    int k = paramArrayOfls.length;
    i = 0;
    while (i < k)
    {
      paramli = paramArrayOfls[i];
      int m = Boolean.TRUE.equals(paramli.aXE);
      localObject2 = paramli.aXF;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        qP().aTd.j("Event has empty param name. event", qK().ch(paramString));
        return null;
      }
      localObject3 = ((Map)localObject1).get(localObject2);
      if ((localObject3 instanceof Long))
      {
        if (paramli.aXD == null)
        {
          qP().aTd.e("No number filter for long param. event, param", qK().ch(paramString), qK().ci((String)localObject2));
          return null;
        }
        paramli = a(((Long)localObject3).longValue(), paramli.aXD);
        if (paramli == null) {
          return null;
        }
        if (!paramli.booleanValue()) {}
        for (j = 1; (j ^ m) != 0; j = 0) {
          return Boolean.valueOf(false);
        }
      }
      if ((localObject3 instanceof Double))
      {
        if (paramli.aXD == null)
        {
          qP().aTd.e("No number filter for double param. event, param", qK().ch(paramString), qK().ci((String)localObject2));
          return null;
        }
        paramli = a(((Double)localObject3).doubleValue(), paramli.aXD);
        if (paramli == null) {
          return null;
        }
        if (!paramli.booleanValue()) {}
        for (j = 1; (j ^ m) != 0; j = 0) {
          return Boolean.valueOf(false);
        }
      }
      if ((localObject3 instanceof String))
      {
        if (paramli.aXC != null) {
          paramli = a((String)localObject3, paramli.aXC);
        }
        while (paramli == null)
        {
          return null;
          if (paramli.aXD != null)
          {
            if (le.cF((String)localObject3))
            {
              paramli = a((String)localObject3, paramli.aXD);
            }
            else
            {
              qP().aTd.e("Invalid param value for number filter. event, param", qK().ch(paramString), qK().ci((String)localObject2));
              return null;
            }
          }
          else
          {
            qP().aTd.e("No filter for String param. event, param", qK().ch(paramString), qK().ci((String)localObject2));
            return null;
          }
        }
        if (!paramli.booleanValue()) {}
        for (j = 1; (j ^ m) != 0; j = 0) {
          return Boolean.valueOf(false);
        }
      }
      if (localObject3 == null)
      {
        qP().aTi.e("Missing param for filter. event, param", qK().ch(paramString), qK().ci((String)localObject2));
        return Boolean.valueOf(false);
      }
      qP().aTd.e("Unknown param type. event, param", qK().ch(paramString), qK().ci((String)localObject2));
      return null;
      i += 1;
    }
    return Boolean.valueOf(true);
  }
  
  private static Boolean a(Boolean paramBoolean, boolean paramBoolean1)
  {
    if (paramBoolean == null) {
      return null;
    }
    return Boolean.valueOf(paramBoolean.booleanValue() ^ paramBoolean1);
  }
  
  private final Boolean a(String paramString1, int paramInt, boolean paramBoolean, String paramString2, List<String> paramList, String paramString3)
  {
    if (paramString1 == null) {
      return null;
    }
    if (paramInt == 6)
    {
      if ((paramList == null) || (paramList.size() == 0)) {
        return null;
      }
    }
    else if (paramString2 == null) {
      return null;
    }
    String str = paramString1;
    if (!paramBoolean) {
      if (paramInt != 1) {
        break label94;
      }
    }
    label94:
    for (str = paramString1;; str = paramString1.toUpperCase(Locale.ENGLISH)) {
      switch (paramInt)
      {
      default: 
        return null;
      }
    }
    if (paramBoolean) {}
    for (paramInt = 0;; paramInt = 66) {
      try
      {
        paramBoolean = Pattern.compile(paramString3, paramInt).matcher(str).matches();
        return Boolean.valueOf(paramBoolean);
      }
      catch (PatternSyntaxException paramString1)
      {
        qP().aTd.j("Invalid regular expression in REGEXP audience filter. expression", paramString3);
        return null;
      }
    }
    return Boolean.valueOf(str.startsWith(paramString2));
    return Boolean.valueOf(str.endsWith(paramString2));
    return Boolean.valueOf(str.contains(paramString2));
    return Boolean.valueOf(str.equals(paramString2));
    return Boolean.valueOf(paramList.contains(str));
  }
  
  private static Boolean a(String paramString, lk paramlk)
  {
    if (!le.cF(paramString)) {
      return null;
    }
    try
    {
      paramString = a(new BigDecimal(paramString), paramlk, 0.0D);
      return paramString;
    }
    catch (NumberFormatException paramString) {}
    return null;
  }
  
  private final Boolean a(String paramString, lm paramlm)
  {
    int i = 0;
    Object localObject = null;
    ae.E(paramlm);
    if (paramString == null) {}
    do
    {
      do
      {
        return null;
      } while ((paramlm.aXO == null) || (paramlm.aXO.intValue() == 0));
      if (paramlm.aXO.intValue() != 6) {
        break;
      }
    } while ((paramlm.aXR == null) || (paramlm.aXR.length == 0));
    int j = paramlm.aXO.intValue();
    boolean bool;
    label89:
    String str;
    if ((paramlm.aXQ != null) && (paramlm.aXQ.booleanValue()))
    {
      bool = true;
      if ((!bool) && (j != 1) && (j != 6)) {
        break label162;
      }
      str = paramlm.aXP;
      label113:
      if (paramlm.aXR != null) {
        break label177;
      }
    }
    label162:
    label177:
    String[] arrayOfString;
    for (paramlm = null;; paramlm = Arrays.asList(arrayOfString))
    {
      if (j == 1) {
        localObject = str;
      }
      return a(paramString, j, bool, str, paramlm, (String)localObject);
      if (paramlm.aXP != null) {
        break;
      }
      return null;
      bool = false;
      break label89;
      str = paramlm.aXP.toUpperCase(Locale.ENGLISH);
      break label113;
      arrayOfString = paramlm.aXR;
      if (!bool) {
        break label197;
      }
    }
    label197:
    ArrayList localArrayList = new ArrayList();
    int k = arrayOfString.length;
    for (;;)
    {
      paramlm = localArrayList;
      if (i >= k) {
        break;
      }
      localArrayList.add(arrayOfString[i].toUpperCase(Locale.ENGLISH));
      i += 1;
    }
  }
  
  private static Boolean a(BigDecimal paramBigDecimal, lk paramlk, double paramDouble)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool5 = true;
    boolean bool1 = true;
    ae.E(paramlk);
    if ((paramlk.aXG == null) || (paramlk.aXG.intValue() == 0)) {
      return null;
    }
    if (paramlk.aXG.intValue() == 4)
    {
      if ((paramlk.aXJ == null) || (paramlk.aXK == null)) {
        return null;
      }
    }
    else if (paramlk.aXI == null) {
      return null;
    }
    int i = paramlk.aXG.intValue();
    if (paramlk.aXG.intValue() == 4) {
      if ((!le.cF(paramlk.aXJ)) || (!le.cF(paramlk.aXK))) {
        return null;
      }
    }
    BigDecimal localBigDecimal1;
    BigDecimal localBigDecimal2;
    for (;;)
    {
      try
      {
        localBigDecimal1 = new BigDecimal(paramlk.aXJ);
        paramlk = new BigDecimal(paramlk.aXK);
        localBigDecimal2 = null;
        if (i != 4) {
          break;
        }
        if (localBigDecimal1 != null) {
          break label202;
        }
        return null;
      }
      catch (NumberFormatException paramBigDecimal)
      {
        return null;
      }
      if (!le.cF(paramlk.aXI)) {
        return null;
      }
      try
      {
        localBigDecimal2 = new BigDecimal(paramlk.aXI);
        paramlk = null;
        localBigDecimal1 = null;
      }
      catch (NumberFormatException paramBigDecimal)
      {
        return null;
      }
    }
    if (localBigDecimal2 != null) {}
    switch (i)
    {
    default: 
      return null;
    case 1: 
      if (paramBigDecimal.compareTo(localBigDecimal2) == -1) {}
      for (;;)
      {
        return Boolean.valueOf(bool1);
        bool1 = false;
      }
    case 2: 
      if (paramBigDecimal.compareTo(localBigDecimal2) == 1) {}
      for (bool1 = bool2;; bool1 = false) {
        return Boolean.valueOf(bool1);
      }
    case 3: 
      label202:
      if (paramDouble != 0.0D)
      {
        if ((paramBigDecimal.compareTo(localBigDecimal2.subtract(new BigDecimal(paramDouble).multiply(new BigDecimal(2)))) == 1) && (paramBigDecimal.compareTo(localBigDecimal2.add(new BigDecimal(paramDouble).multiply(new BigDecimal(2)))) == -1)) {}
        for (bool1 = bool3;; bool1 = false) {
          return Boolean.valueOf(bool1);
        }
      }
      if (paramBigDecimal.compareTo(localBigDecimal2) == 0) {}
      for (bool1 = bool4;; bool1 = false) {
        return Boolean.valueOf(bool1);
      }
    }
    if ((paramBigDecimal.compareTo(localBigDecimal1) != -1) && (paramBigDecimal.compareTo(paramlk) != 1)) {}
    for (bool1 = bool5;; bool1 = false) {
      return Boolean.valueOf(bool1);
    }
  }
  
  final lq[] a(String paramString, lr[] paramArrayOflr, lw[] paramArrayOflw)
  {
    ae.bf(paramString);
    HashSet localHashSet = new HashSet();
    a locala1 = new a();
    a locala2 = new a();
    a locala3 = new a();
    Object localObject4 = qJ().ce(paramString);
    Object localObject5;
    int j;
    Object localObject6;
    Object localObject3;
    Object localObject2;
    Object localObject1;
    int i;
    if (localObject4 != null)
    {
      localObject5 = ((Map)localObject4).keySet().iterator();
      while (((Iterator)localObject5).hasNext())
      {
        j = ((Integer)((Iterator)localObject5).next()).intValue();
        localObject6 = (lv)((Map)localObject4).get(Integer.valueOf(j));
        localObject3 = (BitSet)locala2.get(Integer.valueOf(j));
        localObject2 = (BitSet)locala3.get(Integer.valueOf(j));
        localObject1 = localObject3;
        if (localObject3 == null)
        {
          localObject1 = new BitSet();
          locala2.put(Integer.valueOf(j), localObject1);
          localObject2 = new BitSet();
          locala3.put(Integer.valueOf(j), localObject2);
        }
        i = 0;
        while (i < ((lv)localObject6).aYP.length << 6)
        {
          if (le.a(((lv)localObject6).aYP, i))
          {
            qP().aTi.e("Filter already evaluated. audience ID, filter ID", Integer.valueOf(j), Integer.valueOf(i));
            ((BitSet)localObject2).set(i);
            if (le.a(((lv)localObject6).aYQ, i)) {
              ((BitSet)localObject1).set(i);
            }
          }
          i += 1;
        }
        localObject3 = new lq();
        locala1.put(Integer.valueOf(j), localObject3);
        ((lq)localObject3).aYf = Boolean.valueOf(false);
        ((lq)localObject3).aYe = ((lv)localObject6);
        ((lq)localObject3).aYd = new lv();
        ((lq)localObject3).aYd.aYQ = le.a((BitSet)localObject1);
        ((lq)localObject3).aYd.aYP = le.a((BitSet)localObject2);
      }
    }
    long l1;
    Object localObject11;
    label469:
    int k;
    label488:
    label549:
    label555:
    Object localObject7;
    if (paramArrayOflr != null)
    {
      localObject2 = null;
      l1 = 0L;
      localObject3 = null;
      localObject11 = new a();
      int n = paramArrayOflr.length;
      j = 0;
      if (j < n)
      {
        localObject5 = paramArrayOflr[j];
        localObject4 = ((lr)localObject5).name;
        localObject1 = ((lr)localObject5).aYh;
        if (!qR().c(paramString, gr.aSM)) {
          break label3145;
        }
        qL();
        localObject6 = (Long)le.b((lr)localObject5, "_eid");
        if (localObject6 != null)
        {
          i = 1;
          if ((i == 0) || (!((String)localObject4).equals("_ep"))) {
            break label549;
          }
          k = 1;
          if (k == 0) {
            break label1194;
          }
          qL();
          localObject4 = (String)le.b((lr)localObject5, "_en");
          if (!TextUtils.isEmpty((CharSequence)localObject4)) {
            break label555;
          }
          qP().aTa.j("Extra parameter without an event name. eventId", localObject6);
        }
        for (;;)
        {
          j += 1;
          break;
          i = 0;
          break label469;
          k = 0;
          break label488;
          if ((localObject2 != null) && (localObject3 != null) && (((Long)localObject6).longValue() == ((Long)localObject3).longValue())) {
            break label3160;
          }
          localObject7 = qJ().c(paramString, (Long)localObject6);
          if ((localObject7 != null) && (((Pair)localObject7).first != null)) {
            break label624;
          }
          qP().aTa.e("Extra parameter without existing main event. eventName, eventId", localObject4, localObject6);
        }
        label624:
        localObject2 = (lr)((Pair)localObject7).first;
        l1 = ((Long)((Pair)localObject7).second).longValue();
        qL();
        localObject3 = (Long)le.b((lr)localObject2, "_eid");
        l1 -= 1L;
        if (l1 <= 0L)
        {
          localObject6 = qJ();
          ((ix)localObject6).mN();
          ((ix)localObject6).qP().aTi.j("Clearing complex main event info. appId", paramString);
        }
      }
    }
    label853:
    label922:
    label997:
    label1088:
    label1194:
    label1279:
    label1309:
    label1731:
    label2332:
    label2699:
    label2705:
    label2739:
    label3139:
    label3142:
    label3145:
    label3160:
    label3173:
    label3176:
    for (;;)
    {
      Object localObject9;
      int m;
      try
      {
        ((gd)localObject6).getWritableDatabase().execSQL("delete from main_event_params where app_id=?", new String[] { paramString });
        localObject6 = new ls[((lr)localObject2).aYh.length + localObject1.length];
        i = 0;
        localObject7 = ((lr)localObject2).aYh;
        int i1 = localObject7.length;
        k = 0;
        if (k >= i1) {
          break label853;
        }
        localObject9 = localObject7[k];
        qL();
        if (le.a((lr)localObject5, ((ls)localObject9).name) != null) {
          break label3176;
        }
        m = i + 1;
        localObject6[i] = localObject9;
        i = m;
        k += 1;
        continue;
      }
      catch (SQLiteException localSQLiteException)
      {
        ((ix)localObject6).qP().aTa.j("Error clearing complex main event", localSQLiteException);
        continue;
      }
      qJ().a(paramString, (Long)localObject6, l1, (lr)localObject2);
      continue;
      long l2;
      if (i > 0)
      {
        m = localObject1.length;
        k = 0;
        while (k < m)
        {
          localObject6[i] = localObject1[k];
          k += 1;
          i += 1;
        }
        if (i == localObject6.length)
        {
          localObject1 = localObject6;
          localObject6 = localObject1;
          localObject1 = localObject3;
          localObject3 = localObject6;
          localObject6 = qJ().t(paramString, ((lr)localObject5).name);
          if (localObject6 != null) {
            break label1309;
          }
          qP().aTd.e("Event aggregate wasn't created during raw event logging. appId, event", hb.ck(paramString), qK().ch((String)localObject4));
          localObject5 = new gl(paramString, ((lr)localObject5).name, 1L, 1L, ((lr)localObject5).aYi.longValue(), 0L, null, null, null);
          qJ().a((gl)localObject5);
          l2 = ((gl)localObject5).aRI;
          localObject5 = (Map)((Map)localObject11).get(localObject4);
          if (localObject5 != null) {
            break label3173;
          }
          localObject6 = qJ().y(paramString, (String)localObject4);
          localObject5 = localObject6;
          if (localObject6 == null) {
            localObject5 = new a();
          }
          ((Map)localObject11).put(localObject4, localObject5);
        }
      }
      for (;;)
      {
        Iterator localIterator1 = ((Map)localObject5).keySet().iterator();
        for (;;)
        {
          if (localIterator1.hasNext())
          {
            i = ((Integer)localIterator1.next()).intValue();
            if (localHashSet.contains(Integer.valueOf(i)))
            {
              qP().aTi.j("Skipping failed audience ID", Integer.valueOf(i));
              continue;
              localObject1 = (ls[])Arrays.copyOf((Object[])localObject6, i);
              break;
              qP().aTd.j("No unique parameters in main event. eventName", localObject4);
              localObject6 = localObject3;
              localObject3 = localObject1;
              localObject1 = localObject6;
              break label922;
              if (i == 0) {
                break label3145;
              }
              qL();
              localObject2 = Long.valueOf(0L);
              localObject3 = le.b((lr)localObject5, "_epc");
              if (localObject3 == null) {}
              for (;;)
              {
                l1 = ((Long)localObject2).longValue();
                if (l1 > 0L) {
                  break label1279;
                }
                qP().aTd.j("Complex event with zero extra param count. eventName", localObject4);
                localObject2 = localObject5;
                localObject3 = localObject1;
                localObject1 = localObject6;
                break;
                localObject2 = localObject3;
              }
              qJ().a(paramString, (Long)localObject6, l1, (lr)localObject5);
              localObject2 = localObject5;
              localObject3 = localObject1;
              localObject1 = localObject6;
              break label922;
              localObject5 = ((gl)localObject6).rA();
              break label997;
            }
            localObject9 = (lq)locala1.get(Integer.valueOf(i));
            Object localObject8 = (BitSet)locala2.get(Integer.valueOf(i));
            localObject6 = (BitSet)locala3.get(Integer.valueOf(i));
            if (localObject9 == null)
            {
              localObject6 = new lq();
              locala1.put(Integer.valueOf(i), localObject6);
              ((lq)localObject6).aYf = Boolean.valueOf(true);
              localObject8 = new BitSet();
              locala2.put(Integer.valueOf(i), localObject8);
              localObject6 = new BitSet();
              locala3.put(Integer.valueOf(i), localObject6);
            }
            for (;;)
            {
              Iterator localIterator2 = ((List)((Map)localObject5).get(Integer.valueOf(i))).iterator();
              Object localObject10;
              while (localIterator2.hasNext())
              {
                li localli = (li)localIterator2.next();
                if (qP().cQ(2))
                {
                  qP().aTi.d("Evaluating filter. audience, filter, event", Integer.valueOf(i), localli.aXw, qK().ch(localli.aXx));
                  qP().aTi.j("Filter definition", qK().a(localli));
                }
                if ((localli.aXw == null) || (localli.aXw.intValue() > 256))
                {
                  qP().aTd.e("Invalid event filter ID. appId, id", hb.ck(paramString), String.valueOf(localli.aXw));
                }
                else if (((BitSet)localObject8).get(localli.aXw.intValue()))
                {
                  qP().aTi.e("Event filter already evaluated true. audience ID, filter ID", Integer.valueOf(i), localli.aXw);
                }
                else
                {
                  localObject10 = a(localli, (String)localObject4, (ls[])localObject3, l2);
                  hd localhd = qP().aTi;
                  if (localObject10 == null) {}
                  for (localObject9 = "null";; localObject9 = localObject10)
                  {
                    localhd.j("Event filter result", localObject9);
                    if (localObject10 != null) {
                      break label1731;
                    }
                    localHashSet.add(Integer.valueOf(i));
                    break;
                  }
                  ((BitSet)localObject6).set(localli.aXw.intValue());
                  if (((Boolean)localObject10).booleanValue()) {
                    ((BitSet)localObject8).set(localli.aXw.intValue());
                  }
                }
              }
              break label1088;
              if (paramArrayOflw != null)
              {
                localObject5 = new a();
                j = paramArrayOflw.length;
                i = 0;
                if (i < j)
                {
                  localObject6 = paramArrayOflw[i];
                  localObject1 = (Map)((Map)localObject5).get(((lw)localObject6).name);
                  if (localObject1 != null) {
                    break label3142;
                  }
                  localObject1 = qJ().z(paramString, ((lw)localObject6).name);
                  paramArrayOflr = (lr[])localObject1;
                  if (localObject1 == null) {
                    paramArrayOflr = new a();
                  }
                  ((Map)localObject5).put(((lw)localObject6).name, paramArrayOflr);
                  localObject1 = paramArrayOflr;
                }
              }
              for (;;)
              {
                localObject8 = ((Map)localObject1).keySet().iterator();
                while (((Iterator)localObject8).hasNext())
                {
                  k = ((Integer)((Iterator)localObject8).next()).intValue();
                  if (localHashSet.contains(Integer.valueOf(k)))
                  {
                    qP().aTi.j("Skipping failed audience ID", Integer.valueOf(k));
                  }
                  else
                  {
                    paramArrayOflr = (lq)locala1.get(Integer.valueOf(k));
                    localObject2 = (BitSet)locala2.get(Integer.valueOf(k));
                    localObject3 = (BitSet)locala3.get(Integer.valueOf(k));
                    if (paramArrayOflr == null)
                    {
                      paramArrayOflr = new lq();
                      locala1.put(Integer.valueOf(k), paramArrayOflr);
                      paramArrayOflr.aYf = Boolean.valueOf(true);
                      localObject2 = new BitSet();
                      locala2.put(Integer.valueOf(k), localObject2);
                      localObject3 = new BitSet();
                      locala3.put(Integer.valueOf(k), localObject3);
                    }
                    localObject9 = ((List)((Map)localObject1).get(Integer.valueOf(k))).iterator();
                    for (;;)
                    {
                      if (!((Iterator)localObject9).hasNext()) {
                        break label2739;
                      }
                      localObject10 = (ll)((Iterator)localObject9).next();
                      if (qP().cQ(2))
                      {
                        qP().aTi.d("Evaluating filter. audience, filter, property", Integer.valueOf(k), ((ll)localObject10).aXw, qK().cj(((ll)localObject10).aXM));
                        qP().aTi.j("Filter definition", qK().a((ll)localObject10));
                      }
                      if ((((ll)localObject10).aXw == null) || (((ll)localObject10).aXw.intValue() > 256))
                      {
                        qP().aTd.e("Invalid property filter ID. appId, id", hb.ck(paramString), String.valueOf(((ll)localObject10).aXw));
                        localHashSet.add(Integer.valueOf(k));
                        break;
                      }
                      if (((BitSet)localObject2).get(((ll)localObject10).aXw.intValue()))
                      {
                        qP().aTi.e("Property filter already evaluated true. audience ID, filter ID", Integer.valueOf(k), ((ll)localObject10).aXw);
                      }
                      else
                      {
                        paramArrayOflr = ((ll)localObject10).aXN;
                        if (paramArrayOflr == null)
                        {
                          qP().aTd.j("Missing property filter. property", qK().cj(((lw)localObject6).name));
                          paramArrayOflr = null;
                          localObject11 = qP().aTi;
                          if (paramArrayOflr != null) {
                            break label2699;
                          }
                        }
                        for (localObject4 = "null";; localObject4 = paramArrayOflr)
                        {
                          ((hd)localObject11).j("Property filter result", localObject4);
                          if (paramArrayOflr != null) {
                            break label2705;
                          }
                          localHashSet.add(Integer.valueOf(k));
                          break;
                          boolean bool = Boolean.TRUE.equals(paramArrayOflr.aXE);
                          if (((lw)localObject6).aYl != null)
                          {
                            if (paramArrayOflr.aXD == null)
                            {
                              qP().aTd.j("No number filter for long property. property", qK().cj(((lw)localObject6).name));
                              paramArrayOflr = null;
                              break label2332;
                            }
                            paramArrayOflr = a(a(((lw)localObject6).aYl.longValue(), paramArrayOflr.aXD), bool);
                            break label2332;
                          }
                          if (((lw)localObject6).aXk != null)
                          {
                            if (paramArrayOflr.aXD == null)
                            {
                              qP().aTd.j("No number filter for double property. property", qK().cj(((lw)localObject6).name));
                              paramArrayOflr = null;
                              break label2332;
                            }
                            paramArrayOflr = a(a(((lw)localObject6).aXk.doubleValue(), paramArrayOflr.aXD), bool);
                            break label2332;
                          }
                          if (((lw)localObject6).aTr != null)
                          {
                            if (paramArrayOflr.aXC == null)
                            {
                              if (paramArrayOflr.aXD == null) {
                                qP().aTd.j("No string or number filter defined. property", qK().cj(((lw)localObject6).name));
                              }
                              for (;;)
                              {
                                paramArrayOflr = null;
                                break;
                                if (le.cF(((lw)localObject6).aTr))
                                {
                                  paramArrayOflr = a(a(((lw)localObject6).aTr, paramArrayOflr.aXD), bool);
                                  break;
                                }
                                qP().aTd.e("Invalid user property value for Numeric number filter. property, value", qK().cj(((lw)localObject6).name), ((lw)localObject6).aTr);
                              }
                            }
                            paramArrayOflr = a(a(((lw)localObject6).aTr, paramArrayOflr.aXC), bool);
                            break label2332;
                          }
                          qP().aTd.j("User property has no value, property", qK().cj(((lw)localObject6).name));
                          paramArrayOflr = null;
                          break label2332;
                        }
                        ((BitSet)localObject3).set(((ll)localObject10).aXw.intValue());
                        if (paramArrayOflr.booleanValue()) {
                          ((BitSet)localObject2).set(((ll)localObject10).aXw.intValue());
                        }
                      }
                    }
                  }
                }
                i += 1;
                break;
                paramArrayOflw = new lq[locala2.size()];
                localObject1 = locala2.keySet().iterator();
                i = 0;
                while (((Iterator)localObject1).hasNext())
                {
                  k = ((Integer)((Iterator)localObject1).next()).intValue();
                  if (!localHashSet.contains(Integer.valueOf(k)))
                  {
                    paramArrayOflr = (lq)locala1.get(Integer.valueOf(k));
                    if (paramArrayOflr != null) {
                      break label3139;
                    }
                    paramArrayOflr = new lq();
                  }
                }
                for (;;)
                {
                  j = i + 1;
                  paramArrayOflw[i] = paramArrayOflr;
                  paramArrayOflr.aXs = Integer.valueOf(k);
                  paramArrayOflr.aYd = new lv();
                  paramArrayOflr.aYd.aYQ = le.a((BitSet)locala2.get(Integer.valueOf(k)));
                  paramArrayOflr.aYd.aYP = le.a((BitSet)locala3.get(Integer.valueOf(k)));
                  localObject2 = qJ();
                  localObject3 = paramArrayOflr.aYd;
                  ((iy)localObject2).pf();
                  ((ix)localObject2).mN();
                  ae.bf(paramString);
                  ae.E(localObject3);
                  try
                  {
                    paramArrayOflr = new byte[((nd)localObject3).sZ()];
                    localObject4 = mv.b(paramArrayOflr, paramArrayOflr.length);
                    ((nd)localObject3).a((mv)localObject4);
                    ((mv)localObject4).sR();
                    localObject3 = new ContentValues();
                    ((ContentValues)localObject3).put("app_id", paramString);
                    ((ContentValues)localObject3).put("audience_id", Integer.valueOf(k));
                    ((ContentValues)localObject3).put("current_results", paramArrayOflr);
                  }
                  catch (IOException paramArrayOflr)
                  {
                    try
                    {
                      if (((gd)localObject2).getWritableDatabase().insertWithOnConflict("audience_filter_values", null, (ContentValues)localObject3, 5) == -1L) {
                        ((ix)localObject2).qP().aTa.j("Failed to insert filter results (got -1). appId", hb.ck(paramString));
                      }
                      i = j;
                    }
                    catch (SQLiteException paramArrayOflr)
                    {
                      ((ix)localObject2).qP().aTa.e("Error storing filter results. appId", hb.ck(paramString), paramArrayOflr);
                      i = j;
                    }
                    paramArrayOflr = paramArrayOflr;
                    ((ix)localObject2).qP().aTa.e("Configuration loss. Failed to serialize filter results. appId", hb.ck(paramString), paramArrayOflr);
                    i = j;
                  }
                  break;
                  break;
                  return (lq[])Arrays.copyOf(paramArrayOflw, i);
                }
              }
              localObject6 = localObject3;
              localObject3 = localObject1;
              localObject1 = localObject6;
              break label922;
              break;
            }
          }
        }
        localObject3 = localObject1;
        break;
      }
    }
  }
  
  protected final boolean ri()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */