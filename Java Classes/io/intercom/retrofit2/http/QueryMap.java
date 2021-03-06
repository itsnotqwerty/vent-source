package io.intercom.retrofit2.http;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.PARAMETER})
public @interface QueryMap
{
  boolean encoded() default false;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/retrofit2/http/QueryMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */