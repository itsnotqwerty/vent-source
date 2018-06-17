package io.intercom.android.sdk.models;

import io.intercom.android.sdk.blocks.models.Author;

final class AutoValue_Card
  extends Card
{
  private final Author author;
  private final String description;
  private final String text;
  private final String title;
  private final String type;
  
  AutoValue_Card(String paramString1, String paramString2, String paramString3, String paramString4, Author paramAuthor)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null type");
    }
    this.type = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null text");
    }
    this.text = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null title");
    }
    this.title = paramString3;
    if (paramString4 == null) {
      throw new NullPointerException("Null description");
    }
    this.description = paramString4;
    if (paramAuthor == null) {
      throw new NullPointerException("Null author");
    }
    this.author = paramAuthor;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Card)) {
        break;
      }
      paramObject = (Card)paramObject;
    } while ((this.type.equals(((Card)paramObject).getType())) && (this.text.equals(((Card)paramObject).getText())) && (this.title.equals(((Card)paramObject).getTitle())) && (this.description.equals(((Card)paramObject).getDescription())) && (this.author.equals(((Card)paramObject).getAuthor())));
    return false;
    return false;
  }
  
  public final Author getAuthor()
  {
    return this.author;
  }
  
  public final String getDescription()
  {
    return this.description;
  }
  
  public final String getText()
  {
    return this.text;
  }
  
  public final String getTitle()
  {
    return this.title;
  }
  
  public final String getType()
  {
    return this.type;
  }
  
  public final int hashCode()
  {
    return ((((this.type.hashCode() ^ 0xF4243) * 1000003 ^ this.text.hashCode()) * 1000003 ^ this.title.hashCode()) * 1000003 ^ this.description.hashCode()) * 1000003 ^ this.author.hashCode();
  }
  
  public final String toString()
  {
    return "Card{type=" + this.type + ", text=" + this.text + ", title=" + this.title + ", description=" + this.description + ", author=" + this.author + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Card.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */