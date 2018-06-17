package io.intercom.android.sdk.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface SeenState
{
  public static final String HIDE = "hide";
  public static final String SEEN = "seen";
  public static final String UNSEEN = "unseen";
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/annotations/SeenState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */