package com.layer.sdk.internal.lsdkb;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.layer.b.b.b;
import com.layer.sdk.internal.c;
import java.io.IOException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class a
  extends b
{
  private final Context e;
  private final com.layer.b.b.a f;
  private final boolean g;
  
  public a(Context paramContext, com.layer.b.b.a parama, c paramc, URL paramURL)
  {
    super(paramc, paramURL);
    this.e = paramContext;
    this.f = parama;
    if (paramURL != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.g = bool;
      return;
    }
  }
  
  private SharedPreferences d()
  {
    return this.e.getSharedPreferences("client_config", 0);
  }
  
  public com.layer.b.b.a a()
    throws IOException
  {
    if (this.g) {
      return super.a();
    }
    return null;
  }
  
  public void a(com.layer.b.b.a parama)
  {
    SharedPreferences.Editor localEditor = d().edit();
    parama = b(parama);
    Iterator localIterator = parama.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localEditor.putString(str, (String)parama.get(str));
    }
    localEditor.commit();
  }
  
  public com.layer.b.b.a b()
  {
    SharedPreferences localSharedPreferences = d();
    if ((localSharedPreferences == null) || (localSharedPreferences.getAll().isEmpty())) {
      return this.f;
    }
    if (!localSharedPreferences.contains(d)) {
      localSharedPreferences.edit().putString(b.d, this.f.wF().toString()).commit();
    }
    return a(localSharedPreferences.getAll());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkb/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */