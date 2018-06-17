package io.intercom.android.sdk.conversation;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class JavascriptRunner
{
  private final Collection<Runnable> actionsAfterLoad;
  private boolean hasLoaded = false;
  private final WebView webView;
  
  public JavascriptRunner(WebView paramWebView)
  {
    this(paramWebView, new ArrayList());
  }
  
  JavascriptRunner(WebView paramWebView, Collection<Runnable> paramCollection)
  {
    this.webView = paramWebView;
    this.actionsAfterLoad = paramCollection;
  }
  
  public void clearPendingScripts()
  {
    try
    {
      this.actionsAfterLoad.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void reset()
  {
    try
    {
      this.hasLoaded = false;
      clearPendingScripts();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void run(final String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 6	io/intercom/android/sdk/conversation/JavascriptRunner$1
    //   5: dup
    //   6: aload_0
    //   7: aload_1
    //   8: invokespecial 49	io/intercom/android/sdk/conversation/JavascriptRunner$1:<init>	(Lio/intercom/android/sdk/conversation/JavascriptRunner;Ljava/lang/String;)V
    //   11: astore_1
    //   12: aload_0
    //   13: getfield 27	io/intercom/android/sdk/conversation/JavascriptRunner:hasLoaded	Z
    //   16: ifeq +15 -> 31
    //   19: aload_0
    //   20: getfield 29	io/intercom/android/sdk/conversation/JavascriptRunner:webView	Landroid/webkit/WebView;
    //   23: aload_1
    //   24: invokevirtual 55	android/webkit/WebView:post	(Ljava/lang/Runnable;)Z
    //   27: pop
    //   28: aload_0
    //   29: monitorexit
    //   30: return
    //   31: aload_0
    //   32: getfield 31	io/intercom/android/sdk/conversation/JavascriptRunner:actionsAfterLoad	Ljava/util/Collection;
    //   35: aload_1
    //   36: invokeinterface 59 2 0
    //   41: pop
    //   42: goto -14 -> 28
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	JavascriptRunner
    //   0	50	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   2	28	45	finally
    //   31	42	45	finally
  }
  
  public void runPendingScripts()
  {
    try
    {
      this.hasLoaded = true;
      Iterator localIterator = this.actionsAfterLoad.iterator();
      while (localIterator.hasNext()) {
        ((Runnable)localIterator.next()).run();
      }
      clearPendingScripts();
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/JavascriptRunner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */