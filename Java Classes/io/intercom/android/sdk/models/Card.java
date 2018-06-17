package io.intercom.android.sdk.models;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.blocks.models.Author;
import io.intercom.android.sdk.blocks.models.Author.Builder;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class Card
{
  public static Card create(String paramString1, String paramString2, String paramString3, String paramString4, Author paramAuthor)
  {
    return new AutoValue_Card(paramString1, paramString2, paramString3, paramString4, paramAuthor);
  }
  
  public abstract Author getAuthor();
  
  public abstract String getDescription();
  
  public abstract String getText();
  
  public abstract String getTitle();
  
  public abstract String getType();
  
  public static final class Builder
  {
    String articleId;
    Author.Builder author;
    String description;
    String linkType;
    String text;
    String title;
    String type;
    
    public final Card build()
    {
      if (this.author == null) {}
      for (Author localAuthor = new Author.Builder().build();; localAuthor = this.author.build()) {
        return Card.create(NullSafety.valueOrEmpty(this.type), NullSafety.valueOrEmpty(this.text), NullSafety.valueOrEmpty(this.title), NullSafety.valueOrEmpty(this.description), localAuthor);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Card.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */