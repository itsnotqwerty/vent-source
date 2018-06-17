package com.vent.d;

import android.text.TextUtils;
import com.vent.a.a;
import com.vent.a.d;
import com.vent.a.e;
import com.vent.a.f;
import com.vent.a.g;
import com.vent.a.h;
import com.vent.a.i;
import com.vent.a.j;
import com.vent.a.k;
import com.vent.a.l;
import com.vent.a.m;
import com.vent.a.n;
import com.vent.a.o;
import com.vent.a.p;
import com.vent.a.q;
import com.vent.a.r;
import com.vent.a.s;
import com.vent.a.t;
import com.vent.a.u;
import com.vent.a.v;
import com.vent.a.w;
import com.vent.a.x;
import com.vent.a.y;
import com.vent.a.z;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class b
{
  private static final int[] cko = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 14, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 14, 15 };
  private static Map<Class<?>, Constructor<?>> cmE;
  private static Map<Class<?>, Constructor<?>> cmF;
  
  public static void Fy()
  {
    Object localObject = new HashSet();
    ((Set)localObject).add(d.class);
    ((Set)localObject).add(e.class);
    ((Set)localObject).add(f.class);
    ((Set)localObject).add(g.class);
    ((Set)localObject).add(h.class);
    ((Set)localObject).add(i.class);
    ((Set)localObject).add(j.class);
    ((Set)localObject).add(k.class);
    ((Set)localObject).add(l.class);
    ((Set)localObject).add(m.class);
    ((Set)localObject).add(n.class);
    ((Set)localObject).add(o.class);
    ((Set)localObject).add(p.class);
    ((Set)localObject).add(q.class);
    ((Set)localObject).add(r.class);
    ((Set)localObject).add(s.class);
    ((Set)localObject).add(t.class);
    ((Set)localObject).add(u.class);
    ((Set)localObject).add(v.class);
    ((Set)localObject).add(w.class);
    ((Set)localObject).add(x.class);
    ((Set)localObject).add(y.class);
    ((Set)localObject).add(z.class);
    cmE = new HashMap();
    cmF = new HashMap();
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      Class localClass = (Class)((Iterator)localObject).next();
      try
      {
        localConstructor = localClass.getConstructor(new Class[] { JSONObject.class });
        if (localConstructor != null) {
          cmE.put(localClass, localConstructor);
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        Constructor localConstructor;
        for (;;) {}
      }
      try
      {
        localConstructor = localClass.getConstructor(new Class[] { JSONObject.class, Boolean.TYPE });
        if (localConstructor != null) {
          cmF.put(localClass, localConstructor);
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException1) {}
    }
  }
  
  private static <T> Constructor<T> a(Class<T> paramClass, boolean paramBoolean)
    throws NoSuchMethodException
  {
    Constructor localConstructor2;
    Constructor localConstructor1;
    if (paramBoolean)
    {
      localConstructor2 = (Constructor)cmE.get(paramClass);
      localConstructor1 = localConstructor2;
      if (localConstructor2 == null)
      {
        c.eu("missing ctor for " + paramClass.getCanonicalName());
        localConstructor1 = paramClass.getConstructor(new Class[] { JSONObject.class });
      }
    }
    do
    {
      return localConstructor1;
      localConstructor2 = (Constructor)cmF.get(paramClass);
      localConstructor1 = localConstructor2;
    } while (localConstructor2 != null);
    c.eu("missing ctor for " + paramClass.getCanonicalName());
    return paramClass.getConstructor(new Class[] { JSONObject.class, Boolean.TYPE });
  }
  
  public static <T extends a> ArrayList<T> a(Class<T> paramClass, JSONArray paramJSONArray)
    throws JSONException
  {
    return a(paramClass, paramJSONArray, true, Integer.MAX_VALUE);
  }
  
  public static <T extends a> ArrayList<T> a(Class<T> paramClass, JSONArray paramJSONArray, boolean paramBoolean, int paramInt)
    throws JSONException
  {
    int j = 0;
    int i = 0;
    if (paramJSONArray == null) {
      return null;
    }
    int k = Math.min(paramJSONArray.length(), paramInt);
    localArrayList = new ArrayList(k);
    try
    {
      paramClass = a(paramClass, paramBoolean);
      paramInt = j;
      if (paramBoolean)
      {
        paramInt = i;
        while (paramInt < k)
        {
          localArrayList.add(paramClass.newInstance(new Object[] { paramJSONArray.getJSONObject(paramInt) }));
          paramInt += 1;
        }
      }
      while (paramInt < k)
      {
        localArrayList.add(paramClass.newInstance(new Object[] { paramJSONArray.getJSONObject(paramInt), Boolean.valueOf(false) }));
        paramInt += 1;
      }
      return localArrayList;
    }
    catch (Exception paramClass)
    {
      if ((paramClass instanceof JSONException)) {
        throw ((JSONException)paramClass);
      }
      paramClass.printStackTrace();
    }
  }
  
  public static ArrayList<m> a(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    if (!paramJSONObject.isNull(paramString))
    {
      JSONArray localJSONArray = paramJSONObject.getJSONArray(paramString);
      int j = localJSONArray.length();
      paramString = new ArrayList(j);
      int i = 0;
      for (;;)
      {
        paramJSONObject = paramString;
        if (i >= j) {
          break;
        }
        paramString.add(new m(localJSONArray.getString(i)));
        i += 1;
      }
    }
    paramJSONObject = null;
    return paramJSONObject;
  }
  
  public static <T extends com.vent.a.b> HashMap<m, T> a(Class<T> paramClass, JSONArray paramJSONArray, boolean paramBoolean)
    throws JSONException
  {
    if (paramJSONArray == null) {
      return null;
    }
    int j = Math.min(paramJSONArray.length(), Integer.MAX_VALUE);
    HashMap localHashMap = new HashMap(j);
    for (;;)
    {
      try
      {
        paramClass = a(paramClass, paramBoolean);
        if (paramBoolean)
        {
          i = 0;
          if (i < j)
          {
            com.vent.a.b localb = (com.vent.a.b)paramClass.newInstance(new Object[] { paramJSONArray.getJSONObject(i) });
            localHashMap.put(localb.cjy, localb);
            i += 1;
            continue;
            if (i < j)
            {
              localb = (com.vent.a.b)paramClass.newInstance(new Object[] { paramJSONArray.getJSONObject(i), Boolean.valueOf(false) });
              localHashMap.put(localb.cjy, localb);
              i += 1;
              continue;
            }
          }
          return localHashMap;
        }
      }
      catch (Exception paramClass)
      {
        if ((paramClass instanceof JSONException)) {
          throw ((JSONException)paramClass);
        }
      }
      int i = 0;
    }
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, Collection<m> paramCollection)
    throws JSONException
  {
    if (paramCollection != null)
    {
      JSONArray localJSONArray = new JSONArray();
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        localJSONArray.put((m)paramCollection.next());
      }
      paramJSONObject.put(paramString, localJSONArray);
    }
  }
  
  public static void a(JSONObject paramJSONObject, String paramString, Map<?, ?> paramMap)
    throws JSONException
  {
    if (paramMap != null)
    {
      JSONObject localJSONObject = new JSONObject();
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localJSONObject.put(localEntry.getKey().toString(), localEntry.getValue().toString());
      }
      paramJSONObject.put(paramString, localJSONObject);
    }
  }
  
  public static String b(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    paramJSONObject = paramJSONObject.opt(paramString1);
    if ((paramJSONObject instanceof String)) {
      return (String)paramJSONObject;
    }
    if ((paramJSONObject != null) && (paramJSONObject != JSONObject.NULL)) {
      return String.valueOf(paramJSONObject);
    }
    return paramString2;
  }
  
  public static <T extends com.vent.a.b> HashMap<m, T> b(Class<T> paramClass, JSONArray paramJSONArray)
    throws JSONException
  {
    return a(paramClass, paramJSONArray, true);
  }
  
  public static HashMap<String, String> b(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    Iterator localIterator = null;
    JSONObject localJSONObject = paramJSONObject.optJSONObject(paramString);
    paramJSONObject = localIterator;
    if (localJSONObject != null)
    {
      paramString = new HashMap(localJSONObject.length());
      localIterator = localJSONObject.keys();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (localJSONObject.isNull(str)) {}
        for (paramJSONObject = null;; paramJSONObject = localJSONObject.getString(str))
        {
          paramString.put(str, paramJSONObject);
          break;
        }
      }
      paramJSONObject = paramString;
    }
    return paramJSONObject;
  }
  
  public static HashMap<m, Integer> c(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      paramJSONObject = paramJSONObject.optJSONObject(paramString);
      if (paramJSONObject != null)
      {
        paramString = new HashMap(paramJSONObject.length());
        Iterator localIterator = paramJSONObject.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          paramString.put(o.eh(str), Integer.valueOf(paramJSONObject.optInt(str, 0)));
        }
      }
      return null;
    }
    catch (Exception paramJSONObject) {}
    return paramString;
  }
  
  public static String d(Collection<m> paramCollection)
  {
    if (c.f(paramCollection)) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localJSONArray.put((m)paramCollection.next());
    }
    return localJSONArray.toString();
  }
  
  public static String d(JSONObject paramJSONObject, String paramString)
  {
    return b(paramJSONObject, paramString, null);
  }
  
  public static Date e(JSONObject paramJSONObject, String paramString)
  {
    return c.et(b(paramJSONObject, paramString, null));
  }
  
  public static <T extends a> JSONArray e(Collection<T> paramCollection)
    throws JSONException
  {
    if (paramCollection == null) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localJSONArray.put(((a)paramCollection.next()).EK());
    }
    return localJSONArray;
  }
  
  public static ArrayList<m> es(String paramString)
    throws JSONException
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramString = null;
      return paramString;
    }
    JSONArray localJSONArray = new JSONArray(paramString);
    int j = localJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      paramString = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(new m(localJSONArray.getString(i)));
      i += 1;
    }
  }
  
  public static m f(JSONObject paramJSONObject, String paramString)
  {
    return m.r(b(paramJSONObject, paramString, null));
  }
  
  public static int g(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.opt(paramString);
    if (!(paramJSONObject instanceof String)) {}
    do
    {
      return 0;
      paramJSONObject = (String)paramJSONObject;
    } while (paramJSONObject.length() == 0);
    int m = Math.max(paramJSONObject.length(), 6);
    int i = 0;
    int j = 0;
    if (i < m)
    {
      int k = paramJSONObject.charAt(i);
      if (k < cko.length) {}
      for (k = cko[k];; k = 0)
      {
        j = (j << 4) + k;
        i += 1;
        break;
      }
    }
    return -16777216 + j;
  }
  
  public static <T extends a> JSONArray k(Map<?, T> paramMap)
    throws JSONException
  {
    if (paramMap == null) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext()) {
      localJSONArray.put(((a)((Map.Entry)paramMap.next()).getValue()).EK());
    }
    return localJSONArray;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/d/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */