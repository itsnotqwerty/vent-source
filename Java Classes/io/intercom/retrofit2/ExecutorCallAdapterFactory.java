package io.intercom.retrofit2;

import io.intercom.okhttp3.Request;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

final class ExecutorCallAdapterFactory
  extends CallAdapter.Factory
{
  final Executor callbackExecutor;
  
  ExecutorCallAdapterFactory(Executor paramExecutor)
  {
    this.callbackExecutor = paramExecutor;
  }
  
  public final CallAdapter<?, ?> get(Type paramType, Annotation[] paramArrayOfAnnotation, Retrofit paramRetrofit)
  {
    if (getRawType(paramType) != Call.class) {
      return null;
    }
    new CallAdapter()
    {
      public Call<Object> adapt(Call<Object> paramAnonymousCall)
      {
        return new ExecutorCallAdapterFactory.ExecutorCallbackCall(ExecutorCallAdapterFactory.this.callbackExecutor, paramAnonymousCall);
      }
      
      public Type responseType()
      {
        return this.val$responseType;
      }
    };
  }
  
  static final class ExecutorCallbackCall<T>
    implements Call<T>
  {
    final Executor callbackExecutor;
    final Call<T> delegate;
    
    ExecutorCallbackCall(Executor paramExecutor, Call<T> paramCall)
    {
      this.callbackExecutor = paramExecutor;
      this.delegate = paramCall;
    }
    
    public final void cancel()
    {
      this.delegate.cancel();
    }
    
    public final Call<T> clone()
    {
      return new ExecutorCallbackCall(this.callbackExecutor, this.delegate.clone());
    }
    
    public final void enqueue(final Callback<T> paramCallback)
    {
      Utils.checkNotNull(paramCallback, "callback == null");
      this.delegate.enqueue(new Callback()
      {
        public void onFailure(Call<T> paramAnonymousCall, final Throwable paramAnonymousThrowable)
        {
          ExecutorCallAdapterFactory.ExecutorCallbackCall.this.callbackExecutor.execute(new Runnable()
          {
            public void run()
            {
              ExecutorCallAdapterFactory.ExecutorCallbackCall.1.this.val$callback.onFailure(ExecutorCallAdapterFactory.ExecutorCallbackCall.this, paramAnonymousThrowable);
            }
          });
        }
        
        public void onResponse(Call<T> paramAnonymousCall, final Response<T> paramAnonymousResponse)
        {
          ExecutorCallAdapterFactory.ExecutorCallbackCall.this.callbackExecutor.execute(new Runnable()
          {
            public void run()
            {
              if (ExecutorCallAdapterFactory.ExecutorCallbackCall.this.delegate.isCanceled())
              {
                ExecutorCallAdapterFactory.ExecutorCallbackCall.1.this.val$callback.onFailure(ExecutorCallAdapterFactory.ExecutorCallbackCall.this, new IOException("Canceled"));
                return;
              }
              ExecutorCallAdapterFactory.ExecutorCallbackCall.1.this.val$callback.onResponse(ExecutorCallAdapterFactory.ExecutorCallbackCall.this, paramAnonymousResponse);
            }
          });
        }
      });
    }
    
    public final Response<T> execute()
      throws IOException
    {
      return this.delegate.execute();
    }
    
    public final boolean isCanceled()
    {
      return this.delegate.isCanceled();
    }
    
    public final boolean isExecuted()
    {
      return this.delegate.isExecuted();
    }
    
    public final Request request()
    {
      return this.delegate.request();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/retrofit2/ExecutorCallAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */