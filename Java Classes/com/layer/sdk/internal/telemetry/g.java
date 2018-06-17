package com.layer.sdk.internal.telemetry;

import com.google.a.a.c;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

final class g
{
  @c("id")
  final String btN;
  @c("layer_app_id")
  final String btO;
  @c("records")
  final List<f> btP;
  
  g(String paramString1, String paramString2, List<f> paramList)
  {
    this.btN = paramString1;
    this.btO = paramString2;
    this.btP = Collections.synchronizedList(paramList);
  }
  
  final void a(f paramf)
  {
    synchronized (this.btP)
    {
      this.btP.add(paramf);
      return;
    }
  }
  
  final void b(Set<String> paramSet1, Set<String> paramSet2)
  {
    ??? = new com.google.a.g();
    ((com.google.a.g)???).bgR = false;
    com.google.a.f localf = ((com.google.a.g)???).vc();
    for (;;)
    {
      f localf1;
      synchronized (this.btP)
      {
        ListIterator localListIterator = this.btP.listIterator();
        if (!localListIterator.hasNext()) {
          break;
        }
        localf1 = (f)localListIterator.next();
        if (localf1.isValid()) {
          paramSet1.add(localf.ab(localf1));
        }
      }
      paramSet2.add(localf1.toString());
    }
  }
  
  final f wH()
  {
    List localList = this.btP;
    f localf = null;
    try
    {
      if (!this.btP.isEmpty()) {
        localf = (f)this.btP.get(0);
      }
      return localf;
    }
    finally {}
  }
  
  final f wI()
  {
    List localList = this.btP;
    f localf = null;
    try
    {
      if (!this.btP.isEmpty()) {
        localf = (f)this.btP.get(this.btP.size() - 1);
      }
      return localf;
    }
    finally {}
  }
  
  final int wJ()
  {
    if (this.btP == null) {
      return 0;
    }
    synchronized (this.btP)
    {
      int i = this.btP.size();
      return i;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/telemetry/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */