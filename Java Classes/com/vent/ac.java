package com.vent;

import android.app.Activity;
import com.vent.a.g;
import com.vent.a.h;
import com.vent.a.m;
import com.vent.a.n;
import com.vent.a.z;
import com.vent.d.c;
import com.vent.d.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public class ac
  extends ad
{
  ArrayList<z> ccb;
  int ccc;
  
  ac(CharSequence paramCharSequence, Activity paramActivity, String paramString1, String paramString2, JSONObject paramJSONObject, int paramInt)
  {
    super(paramCharSequence, paramActivity, paramString1, paramString2, paramJSONObject, paramInt);
  }
  
  protected final Void a(Void... paramVarArgs)
  {
    int j = 1;
    paramVarArgs = super.a(paramVarArgs);
    if ((this.ccU >= 200) && (this.ccU <= 299)) {}
    try
    {
      if (!this.ccV.isNull("vents"))
      {
        this.ccb = com.vent.d.b.a(z.class, this.ccV.getJSONArray("vents"));
        if (!c.f(this.ccb))
        {
          int i = this.ccb.size();
          localObject = new android.support.v4.g.b(i);
          ((Set)localObject).add(((z)this.ccb.get(0)).cjy);
          while (j < i)
          {
            m localm = ((z)this.ccb.get(j)).cjy;
            if (((Set)localObject).contains(localm))
            {
              this.ccb.remove(j);
              i -= 1;
            }
            else
            {
              ((Set)localObject).add(localm);
              j += 1;
            }
          }
        }
      }
      else
      {
        this.ccb = new ArrayList(1);
        if (!this.ccV.isNull("vent")) {
          this.ccb.add(new z(this.ccV.getJSONObject("vent")));
        }
      }
      Object localObject = this.ccV.optJSONObject("meta");
      if (localObject != null) {
        this.ccc = ((JSONObject)localObject).optInt("vents_per_ad", 0);
      }
      return paramVarArgs;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.ccV = c.h(localException);
    }
    return paramVarArgs;
  }
  
  protected void aQ(boolean paramBoolean)
  {
    super.aQ(paramBoolean);
    if (paramBoolean) {
      f.z(this.ccb);
    }
  }
  
  protected void b(Void paramVoid)
  {
    int i;
    if ((this.ccU >= 200) && (this.ccU < 299))
    {
      if (c.f(this.ccb)) {
        break label240;
      }
      if ((bb.ciP == null) || (bb.ciO == null) || (bb.ciQ == null)) {
        i = 0;
      }
    }
    for (;;)
    {
      if (i == 0)
      {
        bb.ciS = 0L;
        Object localObject1 = (Activity)this.ccT.get();
        if (localObject1 != null)
        {
          ActMain.a((Activity)localObject1, new Runnable()
          {
            public final void run()
            {
              ac.a(ac.this);
            }
          });
          return;
          Iterator localIterator = this.ccb.iterator();
          Object localObject2;
          label176:
          do
          {
            while (!((Iterator)localObject1).hasNext())
            {
              do
              {
                if (!localIterator.hasNext()) {
                  break label240;
                }
                localObject2 = (z)localIterator.next();
                g localg = (g)bb.ciP.get(((z)localObject2).ckX);
                if (localg == null) {}
                for (localObject1 = null;; localObject1 = (h)bb.ciO.get(localg.cjQ))
                {
                  if ((localg != null) && (localObject1 != null)) {
                    break label176;
                  }
                  i = 0;
                  break;
                }
              } while (((z)localObject2).ckZ == null);
              localObject1 = ((z)localObject2).ckZ.iterator();
            }
            localObject2 = (n)((Iterator)localObject1).next();
          } while (bb.ciQ.containsKey(((n)localObject2).cjy));
          i = 0;
          continue;
        }
      }
      super.b(paramVoid);
      return;
      label240:
      i = 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */