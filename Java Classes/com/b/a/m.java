package com.b.a;

import com.b.a.a.a.e;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;

public final class m
{
  int bCG;
  final o bIf;
  public final c bIg;
  private final n bIh;
  public Socket bIi;
  e bIj;
  com.b.a.a.b.n bIk;
  public y bIl = y.bMk;
  public s bIm;
  Object buh;
  boolean e = false;
  long i;
  
  public m(o paramo, c paramc)
  {
    this.bIf = paramo;
    this.bIg = paramc;
    this.bIh = paramo.bIn;
  }
  
  final void a(Object paramObject)
  {
    if (k()) {
      return;
    }
    synchronized (this.bIf)
    {
      if (this.buh != null) {
        throw new IllegalStateException("Connection already has an owner!");
      }
    }
    this.buh = paramObject;
  }
  
  final boolean a()
  {
    synchronized (this.bIf)
    {
      if (this.buh == null) {
        return false;
      }
      this.buh = null;
      return true;
    }
  }
  
  final boolean e()
  {
    return (!this.bIi.isClosed()) && (!this.bIi.isInputShutdown()) && (!this.bIi.isOutputShutdown());
  }
  
  final boolean h()
  {
    return (this.bIk == null) || (this.bIk.b());
  }
  
  final boolean k()
  {
    return this.bIk != null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Connection{").append(this.bIg.bFS.b).append(":").append(this.bIg.bFS.c).append(", proxy=").append(this.bIg.bFT).append(" hostAddress=").append(this.bIg.bFU.getAddress().getHostAddress()).append(" cipherSuite=");
    if (this.bIm != null) {}
    for (String str = this.bIm.a;; str = "none") {
      return str + " protocol=" + this.bIl + '}';
    }
  }
  
  final long zs()
  {
    if (this.bIk == null) {
      return this.i;
    }
    return this.bIk.c();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */