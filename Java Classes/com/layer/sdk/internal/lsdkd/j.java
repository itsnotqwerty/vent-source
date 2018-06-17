package com.layer.sdk.internal.lsdkd;

import android.net.Uri;
import android.text.TextUtils;
import com.layer.sdk.exceptions.LayerConversationException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkd.lsdka.c;
import com.layer.sdk.internal.lsdke.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class j
  extends f
{
  private final HashMap<String, WeakReference<c>> d = new HashMap();
  
  public j(h paramh)
  {
    super(paramh);
  }
  
  private static String a(String[] paramArrayOfString)
  {
    Arrays.sort(paramArrayOfString);
    ArrayList localArrayList = new ArrayList(paramArrayOfString.length);
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramArrayOfString[i].replace(":", "::"));
      i += 1;
    }
    return TextUtils.join("-:-", localArrayList);
  }
  
  private static String d(Set<String> paramSet)
  {
    return a((String[])paramSet.toArray(new String[paramSet.size()]));
  }
  
  private void d()
  {
    Object localObject2;
    synchronized (this.d)
    {
      HashSet localHashSet = new HashSet();
      localObject2 = this.d.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        if ((c)((WeakReference)localEntry.getValue()).get() == null) {
          localHashSet.add(localEntry.getKey());
        }
      }
    }
    Iterator localIterator = ((HashSet)localObject1).iterator();
    while (localIterator.hasNext())
    {
      localObject2 = (String)localIterator.next();
      this.d.remove(localObject2);
    }
  }
  
  public d a(Uri paramUri1, Uri paramUri2)
  {
    try
    {
      paramUri1 = b(paramUri1);
      if (paramUri1 != null) {
        a(paramUri2, paramUri1);
      }
      return paramUri1;
    }
    finally {}
  }
  
  public c a(c paramc)
  {
    if (paramc == null) {
      try
      {
        throw new IllegalArgumentException("ConversationImpl cannot be null");
      }
      finally {}
    }
    if (!paramc.b()) {
      throw new IllegalStateException("Foreground cache only manages new conversations");
    }
    Object localObject = paramc.k();
    if (!((Set)localObject).contains(this.c.i())) {
      throw new IllegalStateException("Conversation doesn't have authenticated user as participant: " + paramc);
    }
    String str = d((Set)localObject);
    synchronized (this.d)
    {
      if (this.d.containsKey(str))
      {
        paramc = b((Set)localObject);
        throw new LayerConversationException(LayerException.Type.DISTINCT_CONVERSATION_EXISTS, paramc, "A distinct conversation with same set of participants exists already");
      }
    }
    localObject = new WeakReference(paramc);
    this.d.put(str, localObject);
    return paramc;
  }
  
  public boolean a(Set<String> paramSet)
  {
    if (paramSet == null) {
      throw new IllegalArgumentException("participants cannot be null");
    }
    d();
    String str = d(paramSet);
    synchronized (this.d)
    {
      if ((this.d.containsKey(str)) && (((WeakReference)this.d.get(str)).get() != null)) {
        return true;
      }
      if (this.c.l().b(paramSet) != null) {
        return true;
      }
    }
    return false;
  }
  
  public c b(Set<String> paramSet)
  {
    if (paramSet == null) {
      try
      {
        throw new IllegalArgumentException("participants cannot be null");
      }
      finally {}
    }
    for (Object localObject1 = d(paramSet);; localObject1 = null) {
      synchronized (this.d)
      {
        localObject1 = (WeakReference)this.d.get(localObject1);
        if (localObject1 != null)
        {
          localObject1 = (c)((WeakReference)localObject1).get();
          ??? = localObject1;
          if (localObject1 == null) {
            ??? = super.b(this.c.l().b(paramSet), false);
          }
          return (c)???;
        }
      }
    }
  }
  
  public c c(Uri paramUri)
  {
    if (paramUri == null) {
      try
      {
        throw new IllegalArgumentException("Conversation id cannot be null");
      }
      finally {}
    }
    synchronized (this.d)
    {
      Iterator localIterator = this.d.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        c localc = (c)((WeakReference)localEntry.getValue()).get();
        if ((localc != null) && (localc.getId().equals(paramUri)))
        {
          paramUri = (c)((WeakReference)this.d.remove(localEntry.getKey())).get();
          return paramUri;
        }
      }
      paramUri = null;
    }
  }
  
  public c c(Set<String> paramSet)
  {
    if (paramSet == null) {
      try
      {
        throw new IllegalArgumentException("participants cannot be null");
      }
      finally {}
    }
    for (paramSet = d(paramSet);; paramSet = null) {
      synchronized (this.d)
      {
        paramSet = (WeakReference)this.d.get(paramSet);
        if (paramSet != null)
        {
          paramSet = (c)paramSet.get();
          return paramSet;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */