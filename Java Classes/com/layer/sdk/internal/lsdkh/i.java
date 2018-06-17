package com.layer.sdk.internal.lsdkh;

import android.database.DatabaseUtils;
import android.net.Uri;
import android.text.TextUtils;
import com.layer.sdk.internal.lsdkd.d;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import com.layer.sdk.messaging.Presence.PresenceStatus;
import com.layer.sdk.query.Predicate.Operator;
import com.layer.sdk.query.SortDescriptor.Order;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class i
{
  public static String a(Predicate.Operator paramOperator, Object paramObject)
  {
    if (paramObject == null) {}
    for (boolean bool = true;; bool = false) {
      return a(paramOperator, bool);
    }
  }
  
  public static String a(Predicate.Operator paramOperator, boolean paramBoolean)
  {
    StringBuilder localStringBuilder;
    if (paramBoolean) {
      switch (1.bqe[paramOperator.ordinal()])
      {
      default: 
        localStringBuilder = new StringBuilder("Unknown operator with value ").append(paramOperator).append(" for ");
        if (!paramBoolean) {
          break;
        }
      }
    }
    for (paramOperator = " null values";; paramOperator = "non-null values")
    {
      throw new IllegalArgumentException(paramOperator);
      return "IS";
      return "NOT";
      switch (1.bqe[paramOperator.ordinal()])
      {
      default: 
        break;
      case 1: 
        return "=";
      case 2: 
        return "!=";
      case 3: 
        return "<";
      case 4: 
        return "<=";
      case 5: 
        return ">";
      case 6: 
        return ">=";
      case 7: 
        return "IN";
      case 8: 
        return "NOT IN";
      case 9: 
        return "LIKE";
      }
    }
  }
  
  public static String a(SortDescriptor.Order paramOrder)
  {
    switch (1.b[paramOrder.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unknown sort order with value " + paramOrder);
    case 1: 
      return "ASC";
    }
    return "DESC";
  }
  
  public static String a(Object paramObject)
  {
    return a(paramObject, false);
  }
  
  public static String a(Object paramObject, boolean paramBoolean)
  {
    if ((paramObject instanceof String)) {
      return a((String)paramObject, paramBoolean);
    }
    if ((paramObject instanceof Uri)) {
      return a(((Uri)paramObject).toString(), paramBoolean);
    }
    if ((paramObject instanceof Date)) {
      return ((Date)paramObject).getTime();
    }
    if ((paramObject instanceof d)) {
      return a(((d)paramObject).getId().toString(), paramBoolean);
    }
    if ((paramObject instanceof Number)) {
      return (Number)paramObject;
    }
    if ((paramObject instanceof Boolean))
    {
      if (((Boolean)paramObject).booleanValue()) {
        return "1";
      }
      return "0";
    }
    if ((paramObject instanceof MessagePart.TransferStatus)) {
      return Integer.valueOf(((MessagePart.TransferStatus)paramObject).ordinal());
    }
    if ((paramObject instanceof Presence.PresenceStatus)) {
      return Integer.valueOf(((Presence.PresenceStatus)paramObject).getValue());
    }
    if (paramObject == null) {
      return "NULL";
    }
    throw new IllegalArgumentException("No strategy for coercing " + paramObject.getClass().getSimpleName() + " value to SQL value");
  }
  
  public static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = paramString.getBytes();
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      byte b = paramString[i];
      localStringBuilder.append(String.format(Locale.US, "%02X", new Object[] { Byte.valueOf(b) }));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      return DatabaseUtils.sqlEscapeString(paramString.toLowerCase());
    }
    return DatabaseUtils.sqlEscapeString(paramString);
  }
  
  public static Collection<String> a(Collection paramCollection, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(a(paramCollection.next(), paramBoolean));
    }
    return localArrayList;
  }
  
  public static String b(Object paramObject)
  {
    return b(paramObject, false);
  }
  
  public static String b(Object paramObject, boolean paramBoolean)
  {
    return "(" + TextUtils.join(", ", a(d(paramObject), paramBoolean)) + ")";
  }
  
  public static String c(Object paramObject)
  {
    Object localObject = d(paramObject);
    paramObject = new ArrayList(((Collection)localObject).size());
    localObject = ((Collection)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((List)paramObject).add(((Iterator)localObject).next().toString());
    }
    Collections.sort((List)paramObject);
    localObject = new ArrayList(((List)paramObject).size());
    paramObject = ((List)paramObject).iterator();
    while (((Iterator)paramObject).hasNext()) {
      ((List)localObject).add(a((String)((Iterator)paramObject).next()));
    }
    return "'" + TextUtils.join(",", (Iterable)localObject) + "'";
  }
  
  public static Collection d(Object paramObject)
  {
    int j = 0;
    int k = 0;
    int i = 0;
    if ((paramObject instanceof Collection)) {
      return (Collection)paramObject;
    }
    ArrayList localArrayList;
    if ((paramObject instanceof Object[]))
    {
      paramObject = (Object[])paramObject;
      localArrayList = new ArrayList(paramObject.length);
      j = paramObject.length;
      while (i < j)
      {
        localArrayList.add(paramObject[i]);
        i += 1;
      }
      return localArrayList;
    }
    if ((paramObject instanceof int[]))
    {
      paramObject = (int[])paramObject;
      localArrayList = new ArrayList(paramObject.length);
      k = paramObject.length;
      i = j;
      while (i < k)
      {
        localArrayList.add(Integer.valueOf(paramObject[i]));
        i += 1;
      }
      return localArrayList;
    }
    if ((paramObject instanceof long[]))
    {
      paramObject = (long[])paramObject;
      localArrayList = new ArrayList(paramObject.length);
      j = paramObject.length;
      i = k;
      while (i < j)
      {
        localArrayList.add(Long.valueOf(paramObject[i]));
        i += 1;
      }
      return localArrayList;
    }
    return Arrays.asList(new Object[] { paramObject });
  }
  
  public static enum a
  {
    private final String d;
    
    private a(String paramString)
    {
      this.d = paramString;
    }
    
    public final String a()
    {
      return this.d;
    }
  }
  
  public static class b
  {
    private final Set<String> a;
    private final Set<String> b;
    private final Set<i.c> c;
    private final Set<String> d;
    private final Set<String> e;
    private final Long f;
    private final Long g;
    
    public b(Collection<String> paramCollection1, Collection<String> paramCollection2, Collection<i.c> paramCollection, Collection<String> paramCollection3, Collection<String> paramCollection4, Long paramLong1, Long paramLong2)
    {
      if (paramCollection1 == null)
      {
        paramCollection1 = null;
        this.a = paramCollection1;
        if (paramCollection2 != null) {
          break label90;
        }
        paramCollection1 = null;
        label24:
        this.b = paramCollection1;
        if (paramCollection != null) {
          break label102;
        }
        paramCollection1 = null;
        label35:
        this.c = paramCollection1;
        if (paramCollection3 != null) {
          break label114;
        }
        paramCollection1 = null;
        label47:
        this.d = paramCollection1;
        if (paramCollection4 != null) {
          break label127;
        }
      }
      label90:
      label102:
      label114:
      label127:
      for (paramCollection1 = (Collection<String>)localObject;; paramCollection1 = new LinkedHashSet(paramCollection4))
      {
        this.e = paramCollection1;
        this.f = paramLong1;
        this.g = paramLong2;
        return;
        paramCollection1 = new LinkedHashSet(paramCollection1);
        break;
        paramCollection1 = new LinkedHashSet(paramCollection2);
        break label24;
        paramCollection1 = new LinkedHashSet(paramCollection);
        break label35;
        paramCollection1 = new LinkedHashSet(paramCollection3);
        break label47;
      }
    }
    
    private static boolean a(Collection paramCollection)
    {
      return (paramCollection != null) && (!paramCollection.isEmpty());
    }
    
    public String a()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if ((a(this.a)) && (a(this.b)))
      {
        localStringBuilder.append("SELECT ");
        localStringBuilder.append(TextUtils.join(", ", this.a));
        localStringBuilder.append(" FROM ");
        localStringBuilder.append(TextUtils.join(", ", this.b));
      }
      if (a(this.d))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append(TextUtils.join(" ", this.d));
      }
      if (a(this.c))
      {
        if ((a(this.a)) && (a(this.b))) {
          localStringBuilder.append(" WHERE ");
        }
        Iterator localIterator = this.c.iterator();
        int i = 1;
        if (localIterator.hasNext())
        {
          i.c localc = (i.c)localIterator.next();
          if (i != 0) {
            localStringBuilder.append(localc.a());
          }
          for (;;)
          {
            i = 0;
            break;
            localStringBuilder.append(localc.b());
          }
        }
      }
      if (a(this.e))
      {
        localStringBuilder.append(" ORDER BY ");
        localStringBuilder.append(TextUtils.join(", ", this.e));
      }
      if (this.f.longValue() != Long.MAX_VALUE)
      {
        localStringBuilder.append(" LIMIT ");
        localStringBuilder.append(this.f);
      }
      if (this.g.longValue() != 0L)
      {
        localStringBuilder.append(" OFFSET ");
        localStringBuilder.append(this.g);
      }
      return localStringBuilder.toString();
    }
    
    public Set<String> b()
    {
      return this.a;
    }
    
    public static class a
    {
      private Set<String> a;
      private Set<String> b;
      private Set<i.c> c;
      private Set<String> d;
      private Set<String> e;
      private Long f = Long.valueOf(Long.MAX_VALUE);
      private Long g = Long.valueOf(0L);
      
      public a a(i.a parama, String paramString, Object... paramVarArgs)
      {
        if (this.c == null) {
          this.c = new LinkedHashSet();
        }
        parama = new i.c(String.format(Locale.US, paramString, paramVarArgs), parama);
        this.c.add(parama);
        return this;
      }
      
      public a a(Long paramLong)
      {
        this.g = paramLong;
        return this;
      }
      
      public a a(String paramString, SortDescriptor.Order paramOrder)
      {
        if (this.e == null) {
          this.e = new LinkedHashSet();
        }
        this.e.add(paramString + " " + i.a(paramOrder));
        return this;
      }
      
      public a a(String paramString, Object... paramVarArgs)
      {
        return a(i.a.a, paramString, paramVarArgs);
      }
      
      public a a(Collection<String> paramCollection)
      {
        if (paramCollection == null) {
          return this;
        }
        if (this.a == null) {
          this.a = new LinkedHashSet();
        }
        this.a.addAll(paramCollection);
        return this;
      }
      
      public a a(String... paramVarArgs)
      {
        if (paramVarArgs == null) {
          return this;
        }
        return a(Arrays.asList(paramVarArgs));
      }
      
      public i.b a()
      {
        return new i.b(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
      }
      
      public a b(Long paramLong)
      {
        this.f = paramLong;
        return this;
      }
      
      public a b(String paramString, Object... paramVarArgs)
      {
        return a(i.a.b, paramString, paramVarArgs);
      }
      
      public a b(Collection<String> paramCollection)
      {
        if (paramCollection == null) {
          return this;
        }
        if (this.b == null) {
          this.b = new LinkedHashSet();
        }
        this.b.addAll(paramCollection);
        return this;
      }
      
      public a b(String... paramVarArgs)
      {
        if (paramVarArgs == null) {
          return this;
        }
        return b(Arrays.asList(paramVarArgs));
      }
      
      public a c(String paramString, Object... paramVarArgs)
      {
        return a(i.a.c, paramString, paramVarArgs);
      }
    }
  }
  
  public static class c
  {
    private final String a;
    private final i.a b;
    
    public c(String paramString, i.a parama)
    {
      this.a = paramString;
      this.b = parama;
    }
    
    public String a()
    {
      return this.a;
    }
    
    public String b()
    {
      if (this.b == null) {
        return this.a;
      }
      return " " + this.b.a() + " " + this.a;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */