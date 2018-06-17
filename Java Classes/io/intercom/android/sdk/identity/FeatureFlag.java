package io.intercom.android.sdk.identity;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface FeatureFlag
{
  public static final String DISABLE_FORCE_SHOW_HELP_CENTER_MESSENGER = "disable-force-show-help-center-messenger";
  public static final String IMAGE_ANNOTATION = "image-annotation";
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/identity/FeatureFlag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */