package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.format.DateFormat;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.LastParticipatingAdmin;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class TimeFormatter
{
  private SimpleDateFormat absoluteDateFormatter;
  private SimpleDateFormat absoluteTimeFormatter;
  private final Context context;
  private final TimeProvider timeProvider;
  
  public TimeFormatter(Context paramContext, TimeProvider paramTimeProvider)
  {
    this.context = paramContext;
    this.timeProvider = paramTimeProvider;
  }
  
  private static SimpleDateFormat createDateFormatter(Locale paramLocale, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return new SimpleDateFormat(DateFormat.getBestDateTimePattern(paramLocale, paramString), paramLocale);
    }
    return new SimpleDateFormat(paramString, paramLocale);
  }
  
  private CharSequence getAdminActiveStatus(Date paramDate)
  {
    long l = getDifferenceInMinutes(paramDate);
    if (l > TimeUnit.DAYS.toMinutes(6L)) {
      return this.context.getText(R.string.intercom_active_week_ago);
    }
    if (l >= TimeUnit.HOURS.toMinutes(23L) + 31L) {
      paramDate = Phrase.from(this.context, R.string.intercom_active_day_ago).put("days", Long.toString((l / 60L - 13L) / 24L + 1L));
    }
    for (;;)
    {
      return paramDate.format();
      if (l >= 53L) {
        paramDate = Phrase.from(this.context, R.string.intercom_active_hour_ago).put("hours", Long.toString((l - 31L) / 60L + 1L));
      } else if (l >= 38L) {
        paramDate = Phrase.from(this.context, R.string.intercom_active_minute_ago).put("minutes", Long.toString(45L));
      } else if (l >= 16L) {
        paramDate = Phrase.from(this.context, R.string.intercom_active_minute_ago).put("minutes", Long.toString(30L));
      } else {
        paramDate = Phrase.from(this.context, R.string.intercom_active_15m_ago).put("minutes", Long.toString(15L));
      }
    }
  }
  
  private Date getDateFromTimeStamp(long paramLong)
  {
    return new Date(1000L * paramLong);
  }
  
  private long getDifferenceInDays(Date paramDate)
  {
    return TimeUnit.MILLISECONDS.toDays(this.timeProvider.currentTimeMillis() - paramDate.getTime());
  }
  
  private long getDifferenceInHours(Date paramDate)
  {
    return TimeUnit.MILLISECONDS.toHours(this.timeProvider.currentTimeMillis() - paramDate.getTime());
  }
  
  private long getDifferenceInMinutes(Date paramDate)
  {
    return TimeUnit.MILLISECONDS.toMinutes(this.timeProvider.currentTimeMillis() - paramDate.getTime());
  }
  
  private CharSequence getFormattedTime(Date paramDate)
  {
    long l1 = getDifferenceInMinutes(paramDate);
    long l2 = getDifferenceInHours(paramDate);
    long l3 = getDifferenceInDays(paramDate);
    long l4 = l3 / 7L;
    if (l4 > 0L) {
      paramDate = Phrase.from(this.context, R.string.intercom_time_week_ago).put("delta", Long.toString(l4));
    }
    for (;;)
    {
      return paramDate.format();
      if (l3 > 0L)
      {
        paramDate = Phrase.from(this.context, R.string.intercom_time_day_ago).put("delta", Long.toString(l3));
      }
      else if (l2 > 0L)
      {
        paramDate = Phrase.from(this.context, R.string.intercom_time_hour_ago).put("delta", Long.toString(l2));
      }
      else
      {
        if (l1 < 1L) {
          break;
        }
        paramDate = Phrase.from(this.context, R.string.intercom_time_minute_ago).put("delta", Long.toString(l1));
      }
    }
    return this.context.getText(R.string.intercom_time_just_now);
  }
  
  public String getAbsoluteDate(long paramLong)
  {
    return getAbsoluteDate(1000L * paramLong, this.context.getResources().getConfiguration().locale);
  }
  
  String getAbsoluteDate(long paramLong, Locale paramLocale)
  {
    if (this.absoluteDateFormatter == null) {
      this.absoluteDateFormatter = createDateFormatter(paramLocale, "MMMM d");
    }
    return this.absoluteDateFormatter.format(new Date(paramLong));
  }
  
  public String getAbsoluteTime(long paramLong)
  {
    return getAbsoluteTime(1000L * paramLong, this.context.getResources().getConfiguration().locale);
  }
  
  String getAbsoluteTime(long paramLong, Locale paramLocale)
  {
    if (this.absoluteTimeFormatter == null) {
      this.absoluteTimeFormatter = createDateFormatter(paramLocale, "hh:mm");
    }
    return this.absoluteTimeFormatter.format(new Date(paramLong));
  }
  
  public CharSequence getAdminActiveStatus(LastParticipatingAdmin paramLastParticipatingAdmin, Provider<AppConfig> paramProvider)
  {
    if (shouldShowActiveOrAwayState(((AppConfig)paramProvider.get()).getLocale()))
    {
      if (paramLastParticipatingAdmin.isActive()) {
        return this.context.getString(R.string.intercom_active_state);
      }
      return this.context.getString(R.string.intercom_away_state);
    }
    if (paramLastParticipatingAdmin.getLastActiveAt() <= 0L) {
      return "";
    }
    return getAdminActiveStatus(getDateFromTimeStamp(paramLastParticipatingAdmin.getLastActiveAt()));
  }
  
  public CharSequence getFormattedTime(long paramLong)
  {
    if (paramLong <= 0L) {
      return "";
    }
    return getFormattedTime(new Date(1000L * paramLong));
  }
  
  public String getLastActiveMinutes(long paramLong)
  {
    Date localDate = new Date(1000L * paramLong);
    return getDifferenceInMinutes(localDate) + " minutes";
  }
  
  public CharSequence getUpdated(long paramLong)
  {
    Date localDate = getDateFromTimeStamp(paramLong);
    paramLong = getDifferenceInMinutes(localDate);
    long l1 = getDifferenceInHours(localDate);
    long l2 = getDifferenceInDays(localDate);
    long l3 = l2 / 7L;
    if (l3 > 0L) {
      return "Updated " + l3 + " weeks ago";
    }
    if (l2 > 0L) {
      return "Updated " + l2 + " days ago";
    }
    if (l1 > 0L) {
      return "Updated " + l1 + " hours ago";
    }
    if (paramLong >= 1L) {
      return "Updated " + paramLong + " minutes ago";
    }
    return this.context.getText(R.string.intercom_time_just_now);
  }
  
  boolean shouldShowActiveOrAwayState(String paramString)
  {
    return paramString.equals("en");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/TimeFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */