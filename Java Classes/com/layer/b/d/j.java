package com.layer.b.d;

import com.layer.b.f.a.g;
import com.layer.b.f.c.a;
import com.layer.b.f.c.d;
import com.layer.b.f.c.m;
import com.layer.b.f.c.n;
import com.layer.b.f.c.p;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class j
{
  l bwQ;
  c bwR;
  h bwS;
  List<h> bwT;
  n bwU;
  Set<a> bwV;
  i bwW;
  g bwX;
  com.layer.b.f.a.i bwY;
  List<com.layer.b.f.a.i> bwZ;
  List<c> c;
  Map<String, Date> g;
  List<i> j;
  
  static List<c> a(List<d> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(new c((d)paramList.next(), (byte)0));
    }
    return localArrayList;
  }
  
  static List<h> a(Set<m> paramSet)
  {
    ArrayList localArrayList = new ArrayList();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localArrayList.add(new h((m)paramSet.next(), (byte)0));
    }
    return localArrayList;
  }
  
  static List<i> f(Set<p> paramSet)
  {
    ArrayList localArrayList = new ArrayList(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localArrayList.add(new i((p)paramSet.next()));
    }
    return localArrayList;
  }
  
  static List<com.layer.b.f.a.i> w(List<com.layer.b.f.a.i> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(new com.layer.b.f.a.i((com.layer.b.f.a.i)paramList.next()));
    }
    return localArrayList;
  }
  
  public final String toString()
  {
    return "ThriftResponse{mTransportError=" + this.bwQ + ", event=" + this.bwR + ", events=" + this.c + ", stream=" + this.bwS + ", streams=" + this.bwT + ", streamMetadata=" + this.bwU + ", blocklist=" + this.g + ", contentSet=" + this.bwV + ", syncUserMutation=" + this.bwW + ", syncUserMutations=" + this.j + ", mIdentityUpdatesResponses=" + this.bwX + ", mPresence=" + this.bwY + ", mPresences=" + this.bwZ + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/d/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */