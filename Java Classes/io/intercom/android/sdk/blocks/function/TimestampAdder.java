package io.intercom.android.sdk.blocks.function;

import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.Builder;
import java.util.Calendar;
import java.util.List;

public class TimestampAdder
{
  private final Calendar currentDate;
  private final Calendar nextDate;
  
  TimestampAdder(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    this.currentDate = paramCalendar1;
    this.nextDate = paramCalendar2;
  }
  
  public static TimestampAdder create()
  {
    return new TimestampAdder(Calendar.getInstance(), Calendar.getInstance());
  }
  
  private boolean isDivider(Part paramPart)
  {
    return "day_divider_style".equals(paramPart.getMessageStyle());
  }
  
  public void addDayDividers(List<Part> paramList)
  {
    this.currentDate.setTimeInMillis(0L);
    this.nextDate.setTimeInMillis(0L);
    int j;
    for (int i = 0; i < paramList.size(); i = j + 1)
    {
      j = i;
      if (!isDivider((Part)paramList.get(i)))
      {
        long l = ((Part)paramList.get(i)).getCreatedAt();
        this.nextDate.setTimeInMillis(1000L * l);
        j = i;
        if (datesAreFromDifferentDays()) {
          if (i != 0)
          {
            j = i;
            if (isDivider((Part)paramList.get(i - 1))) {}
          }
          else
          {
            paramList.add(i, new Part.Builder().withStyle("day_divider_style").withCreatedAt(l).build());
            j = i + 1;
          }
        }
        this.currentDate.setTimeInMillis(this.nextDate.getTimeInMillis());
      }
    }
  }
  
  boolean datesAreFromDifferentDays()
  {
    return (this.currentDate.get(6) != this.nextDate.get(6)) || (this.currentDate.get(1) != this.nextDate.get(1));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/function/TimestampAdder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */