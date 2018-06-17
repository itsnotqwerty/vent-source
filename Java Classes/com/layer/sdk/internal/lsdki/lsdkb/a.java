package com.layer.sdk.internal.lsdki.lsdkb;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.layer.sdk.internal.lsdkd.d;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.k;
import com.layer.sdk.internal.lsdkd.lsdka.c;
import com.layer.sdk.internal.lsdkd.lsdka.i;
import com.layer.sdk.messaging.Message;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class a
{
  public static void a(SQLiteDatabase paramSQLiteDatabase, Collection<Long> paramCollection, a parama, f paramf, k paramk)
  {
    ArrayList localArrayList;
    for (;;)
    {
      Object localObject2;
      Object localObject1;
      try
      {
        localArrayList = new ArrayList(paramCollection.size());
        paramCollection = paramCollection.iterator();
        if (!paramCollection.hasNext()) {
          break;
        }
        localObject2 = (Long)paramCollection.next();
        localObject1 = parama.e(paramSQLiteDatabase, (Long)localObject2);
        if (localObject1 == null) {
          continue;
        }
        localObject1 = paramf.b((Uri)localObject1, false);
        if (localObject1 == null) {
          continue;
        }
        localObject3 = parama.k(paramSQLiteDatabase, (Long)localObject2);
        localObject2 = ((c)localObject1).getLastMessage();
        if ((localObject2 != null) && (localObject3 == null))
        {
          ((c)localObject1).d(null);
          localArrayList.add(localObject1);
          continue;
        }
        if (localObject3 == null) {
          continue;
        }
      }
      finally {}
      Object localObject3 = paramf.c((Uri)localObject3, false);
      if (localObject3 != null) {
        if (localObject2 == null)
        {
          ((c)localObject1).d(((i)localObject3).getId());
          localArrayList.add(localObject1);
        }
        else if (((Message)localObject2).getPosition() < ((i)localObject3).getPosition())
        {
          ((c)localObject1).d(((i)localObject3).getId());
          localArrayList.add(localObject1);
        }
        else if (((Message)localObject2).isDeleted())
        {
          ((c)localObject1).d(((i)localObject3).getId());
          localArrayList.add(localObject1);
        }
      }
    }
    if (!localArrayList.isEmpty()) {
      paramf.b(paramk, (d[])localArrayList.toArray(new d[localArrayList.size()]));
    }
  }
  
  public static abstract interface a
  {
    public abstract Uri e(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
    
    public abstract Uri k(SQLiteDatabase paramSQLiteDatabase, Long paramLong);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdki/lsdkb/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */