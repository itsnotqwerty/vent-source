package com.google.android.gms.c;

import java.util.concurrent.Executor;

public abstract class e<TResult>
{
  public e<TResult> a(Executor paramExecutor, a<TResult> parama)
  {
    throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
  }
  
  public abstract e<TResult> a(Executor paramExecutor, b paramb);
  
  public abstract e<TResult> a(Executor paramExecutor, c<? super TResult> paramc);
  
  public abstract Exception getException();
  
  public abstract TResult getResult();
  
  public abstract boolean isComplete();
  
  public abstract boolean isSuccessful();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */