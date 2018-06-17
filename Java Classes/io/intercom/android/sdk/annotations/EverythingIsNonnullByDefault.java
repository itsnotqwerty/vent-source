package io.intercom.android.sdk.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.Nonnull;
import javax.annotation.meta.TypeQualifierDefault;

@Documented
@Retention(RetentionPolicy.SOURCE)
@Nonnull
@TypeQualifierDefault({java.lang.annotation.ElementType.PARAMETER, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD})
public @interface EverythingIsNonnullByDefault {}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/annotations/EverythingIsNonnullByDefault.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */