package com.vent.d;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.vent.a.m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class d
{
  public static <T extends Parcelable> HashMap<m, T> a(Intent paramIntent, String paramString)
  {
    return w(paramIntent.getBundleExtra(paramString));
  }
  
  public static void a(Intent paramIntent, String paramString, Map<m, ? extends Parcelable> paramMap)
  {
    paramIntent.putExtra(paramString, m(paramMap));
  }
  
  public static void a(Intent paramIntent, String paramString, Set<? extends Parcelable> paramSet)
  {
    if (paramSet == null) {}
    for (paramSet = null;; paramSet = new ArrayList(paramSet))
    {
      paramIntent.putParcelableArrayListExtra(paramString, paramSet);
      return;
    }
  }
  
  public static void a(Bundle paramBundle, String paramString, Map<m, ? extends Parcelable> paramMap)
  {
    paramBundle.putBundle(paramString, m(paramMap));
  }
  
  public static void a(Bundle paramBundle, String paramString, Set<? extends Parcelable> paramSet)
  {
    if (paramSet == null) {}
    for (paramSet = null;; paramSet = new ArrayList(paramSet))
    {
      paramBundle.putParcelableArrayList(paramString, paramSet);
      return;
    }
  }
  
  public static void a(Parcel paramParcel, int paramInt, Collection<m> paramCollection)
  {
    if (paramCollection == null) {
      paramParcel.writeInt(0);
    }
    for (;;)
    {
      return;
      paramParcel.writeInt(paramCollection.size());
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        ((m)paramCollection.next()).writeToParcel(paramParcel, paramInt);
      }
    }
  }
  
  public static <V extends Parcelable> void a(Parcel paramParcel, int paramInt, Map<m, V> paramMap)
  {
    if (paramMap == null) {
      paramParcel.writeInt(0);
    }
    for (;;)
    {
      return;
      paramParcel.writeInt(paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        ((m)((Map.Entry)localObject).getKey()).writeToParcel(paramParcel, paramInt);
        localObject = (Parcelable)((Map.Entry)localObject).getValue();
        if (localObject != null)
        {
          paramParcel.writeInt(1);
          ((Parcelable)localObject).writeToParcel(paramParcel, paramInt);
        }
        else
        {
          paramParcel.writeInt(0);
        }
      }
    }
  }
  
  public static void a(Parcel paramParcel, Date paramDate)
  {
    if (paramDate != null)
    {
      paramParcel.writeInt(1);
      paramParcel.writeLong(paramDate.getTime());
      return;
    }
    paramParcel.writeInt(0);
  }
  
  public static <T extends Parcelable> HashSet<T> b(Intent paramIntent, String paramString)
  {
    paramIntent = paramIntent.getParcelableArrayListExtra(paramString);
    if (paramIntent == null) {
      return null;
    }
    return new HashSet(paramIntent);
  }
  
  public static void b(Parcel paramParcel, int paramInt, Map<m, Integer> paramMap)
  {
    if (paramMap == null) {
      paramParcel.writeInt(0);
    }
    for (;;)
    {
      return;
      paramParcel.writeInt(paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        ((m)((Map.Entry)localObject).getKey()).writeToParcel(paramParcel, paramInt);
        localObject = (Integer)((Map.Entry)localObject).getValue();
        if (localObject != null)
        {
          paramParcel.writeInt(1);
          paramParcel.writeInt(((Integer)localObject).intValue());
        }
        else
        {
          paramParcel.writeInt(0);
        }
      }
    }
  }
  
  public static <V extends Parcelable> HashMap<m, V> c(Parcel paramParcel, Parcelable.Creator<V> paramCreator)
    throws Exception
  {
    int i = paramParcel.readInt();
    if (i > 10000) {
      throw new Exception("bad size in parcel");
    }
    HashMap localHashMap = new HashMap(i);
    if (i > 0)
    {
      m localm = new m(paramParcel);
      if (paramParcel.readInt() == 0) {}
      for (Object localObject = null;; localObject = (Parcelable)paramCreator.createFromParcel(paramParcel))
      {
        localHashMap.put(localm, localObject);
        i -= 1;
        break;
      }
    }
    return localHashMap;
  }
  
  public static <V extends Parcelable> void c(Parcel paramParcel, int paramInt, Map<String, V> paramMap)
  {
    if (paramMap == null) {
      paramParcel.writeInt(0);
    }
    for (;;)
    {
      return;
      paramParcel.writeInt(paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        paramParcel.writeString((String)((Map.Entry)localObject).getKey());
        localObject = (Parcelable)((Map.Entry)localObject).getValue();
        if (localObject != null)
        {
          paramParcel.writeInt(1);
          ((Parcelable)localObject).writeToParcel(paramParcel, paramInt);
        }
        else
        {
          paramParcel.writeInt(0);
        }
      }
    }
  }
  
  public static <V extends Parcelable> HashMap<String, V> d(Parcel paramParcel, Parcelable.Creator<V> paramCreator)
    throws Exception
  {
    int i = paramParcel.readInt();
    if ((i < 0) || (i > 10000)) {
      throw new Exception("bad size in parcel");
    }
    HashMap localHashMap = new HashMap(i);
    if (i > 0)
    {
      String str = paramParcel.readString();
      if (paramParcel.readInt() == 0) {}
      for (Object localObject = null;; localObject = (Parcelable)paramCreator.createFromParcel(paramParcel))
      {
        localHashMap.put(str, localObject);
        i -= 1;
        break;
      }
    }
    return localHashMap;
  }
  
  public static <T extends Parcelable> HashMap<m, T> f(Bundle paramBundle, String paramString)
  {
    return w(paramBundle.getBundle(paramString));
  }
  
  public static HashMap<m, Integer> g(Parcel paramParcel)
    throws Exception
  {
    int i = paramParcel.readInt();
    if ((i < 0) || (i > 10000)) {
      throw new Exception("bad size in parcel");
    }
    HashMap localHashMap = new HashMap(i);
    if (i > 0)
    {
      m localm = new m(paramParcel);
      if (paramParcel.readInt() == 0) {}
      for (Object localObject = null;; localObject = Integer.valueOf(paramParcel.readInt()))
      {
        localHashMap.put(localm, localObject);
        i -= 1;
        break;
      }
    }
    return localHashMap;
  }
  
  public static <T extends Parcelable> HashSet<T> g(Bundle paramBundle, String paramString)
  {
    paramBundle = paramBundle.getParcelableArrayList(paramString);
    if (paramBundle == null) {
      return null;
    }
    return new HashSet(paramBundle);
  }
  
  public static HashSet<m> h(Parcel paramParcel)
    throws Exception
  {
    int i = paramParcel.readInt();
    if ((i < 0) || (i > 10000)) {
      throw new Exception("bad size in parcel");
    }
    HashSet localHashSet = new HashSet(i);
    while (i > 0)
    {
      localHashSet.add(new m(paramParcel));
      i -= 1;
    }
    return localHashSet;
  }
  
  public static Date i(Parcel paramParcel)
  {
    if (paramParcel.readInt() == 0) {
      return null;
    }
    return new Date(paramParcel.readLong());
  }
  
  private static Bundle m(Map<m, ? extends Parcelable> paramMap)
  {
    if (paramMap == null) {
      return null;
    }
    Bundle localBundle = new Bundle();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localBundle.putParcelable(((m)localEntry.getKey()).toString(), (Parcelable)localEntry.getValue());
    }
    return localBundle;
  }
  
  private static <T extends Parcelable> HashMap<m, T> w(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    Object localObject = paramBundle.keySet();
    HashMap localHashMap = new HashMap(((Set)localObject).size());
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      localHashMap.put(new m(str), paramBundle.getParcelable(str));
    }
    return localHashMap;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/d/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */