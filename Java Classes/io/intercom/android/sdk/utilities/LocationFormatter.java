package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.models.Location;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

public class LocationFormatter
{
  private static final String[] LOWER_CASE_ENGLISH_AM_PM = { "am", "pm" };
  private static final long ONE_MINUTE_IN_MILLIS = TimeUnit.MINUTES.toMillis(1L);
  private static final String[] UPPER_CASE_EN_GB_AM_PM;
  private static final String[] UPPER_CASE_EN_US_AM_PM = { "AM", "PM" };
  
  static
  {
    UPPER_CASE_EN_GB_AM_PM = new String[] { "a.m.", "p.m." };
  }
  
  public static CharSequence getLocationString(Context paramContext, Location paramLocation, Date paramDate)
  {
    if (paramLocation.getTimezoneOffset() == null) {
      return "";
    }
    Object localObject = paramContext.getResources().getConfiguration().locale;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("h:mma", (Locale)localObject);
    TimeZone localTimeZone = TimeZone.getDefault();
    localTimeZone.setRawOffset((int)TimeUnit.SECONDS.toMillis(paramLocation.getTimezoneOffset().intValue()));
    localSimpleDateFormat.setTimeZone(localTimeZone);
    localObject = new DateFormatSymbols((Locale)localObject);
    if ((Arrays.equals(((DateFormatSymbols)localObject).getAmPmStrings(), UPPER_CASE_EN_GB_AM_PM)) || (Arrays.equals(((DateFormatSymbols)localObject).getAmPmStrings(), UPPER_CASE_EN_US_AM_PM))) {
      ((DateFormatSymbols)localObject).setAmPmStrings(LOWER_CASE_ENGLISH_AM_PM);
    }
    localSimpleDateFormat.setDateFormatSymbols((DateFormatSymbols)localObject);
    return Phrase.from(paramContext, R.string.intercom_profile_location).put("time", localSimpleDateFormat.format(paramDate)).put("location", paramLocation.getCityName() + ", " + paramLocation.getCountryName()).format();
  }
  
  public static void postOnNextMinute(View paramView, Runnable paramRunnable, TimeProvider paramTimeProvider)
  {
    long l1 = paramTimeProvider.currentTimeMillis();
    long l2 = ONE_MINUTE_IN_MILLIS;
    paramView.postDelayed(paramRunnable, ONE_MINUTE_IN_MILLIS - l1 % l2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/LocationFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */