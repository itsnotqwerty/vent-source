package com.layer.sdk.internal.lsdke;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.layer.b.f.c.o;
import com.layer.sdk.internal.lsdkd.lsdka.e;
import com.layer.sdk.internal.lsdkd.lsdka.j;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Message;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract interface b
{
  public abstract com.layer.sdk.internal.lsdkd.lsdka.c a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation, boolean paramBoolean);
  
  public abstract com.layer.sdk.internal.lsdkd.lsdka.i a(Uri paramUri);
  
  public abstract Boolean a(Conversation paramConversation);
  
  public abstract Boolean a(Conversation paramConversation, Integer paramInteger);
  
  public abstract Integer a(com.layer.sdk.internal.lsdkd.lsdka.c paramc);
  
  public abstract List<Uri> a(com.layer.sdk.internal.lsdkd.lsdka.c paramc, String paramString, long paramLong);
  
  public abstract List<Uri> a(Long paramLong);
  
  public abstract List<Uri> a(Set<String> paramSet);
  
  public abstract List<Uri> a(o... paramVarArgs);
  
  public abstract Map<Uri, com.layer.sdk.internal.lsdkd.lsdka.c> a(SQLiteDatabase paramSQLiteDatabase, Collection<com.layer.sdk.internal.lsdkd.lsdka.c> paramCollection, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract void a(SQLiteDatabase paramSQLiteDatabase, Conversation paramConversation);
  
  public abstract void a(SQLiteDatabase paramSQLiteDatabase, Message paramMessage);
  
  public abstract void a(SQLiteDatabase paramSQLiteDatabase, Iterable<com.layer.sdk.internal.lsdkd.d> paramIterable, boolean paramBoolean);
  
  public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.b.d.i... paramVarArgs);
  
  public abstract void a(SQLiteDatabase paramSQLiteDatabase, com.layer.sdk.internal.lsdki.c... paramVarArgs);
  
  public abstract void a(com.layer.sdk.internal.lsdkd.lsdka.d paramd);
  
  public abstract void a(Conversation paramConversation, int paramInt);
  
  public abstract void a(Conversation paramConversation, boolean paramBoolean);
  
  public abstract Uri b(Set<String> paramSet);
  
  public abstract j b(Uri paramUri);
  
  public abstract void b(Conversation paramConversation, int paramInt);
  
  public abstract com.layer.sdk.internal.lsdkd.lsdka.c c(Uri paramUri);
  
  public abstract e d(Uri paramUri);
  
  public abstract SQLiteDatabase e();
  
  public abstract void i(SQLiteDatabase paramSQLiteDatabase);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */