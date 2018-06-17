package io.intercom.android.sdk.utilities;

import android.app.Fragment;
import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.TextView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class Phrase
{
  private static final int EOF = 0;
  private char curChar;
  private int curCharIndex;
  private CharSequence formatted;
  private Token head;
  private final Set<String> keys = new HashSet();
  private final Map<String, CharSequence> keysToValues = new HashMap();
  private final CharSequence pattern;
  
  private Phrase(CharSequence paramCharSequence)
  {
    if (paramCharSequence.length() > 0) {
      c = paramCharSequence.charAt(0);
    }
    this.curChar = c;
    this.pattern = paramCharSequence;
    paramCharSequence = null;
    for (;;)
    {
      Token localToken = token(paramCharSequence);
      if (localToken == null) {
        break;
      }
      paramCharSequence = localToken;
      if (this.head == null)
      {
        this.head = localToken;
        paramCharSequence = localToken;
      }
    }
  }
  
  private void consume()
  {
    this.curCharIndex += 1;
    if (this.curCharIndex == this.pattern.length()) {}
    for (char c = '\000';; c = this.pattern.charAt(this.curCharIndex))
    {
      this.curChar = c;
      return;
    }
  }
  
  public static Phrase from(Fragment paramFragment, int paramInt)
  {
    return from(paramFragment.getResources(), paramInt);
  }
  
  public static Phrase from(Context paramContext, int paramInt)
  {
    return from(paramContext.getResources(), paramInt);
  }
  
  public static Phrase from(Resources paramResources, int paramInt)
  {
    return from(paramResources.getText(paramInt));
  }
  
  public static Phrase from(View paramView, int paramInt)
  {
    return from(paramView.getResources(), paramInt);
  }
  
  public static Phrase from(CharSequence paramCharSequence)
  {
    return new Phrase(paramCharSequence);
  }
  
  private KeyToken key(Token paramToken)
  {
    Object localObject = new StringBuilder();
    consume();
    while (((this.curChar >= 'a') && (this.curChar <= 'z')) || ((this.curChar >= 'A') && (this.curChar <= 'Z')) || (this.curChar == '_'))
    {
      ((StringBuilder)localObject).append(this.curChar);
      consume();
    }
    if (this.curChar != '}') {
      throw new IllegalArgumentException("Missing closing brace: } in '" + this.pattern + "'");
    }
    consume();
    if (((StringBuilder)localObject).length() == 0) {
      throw new IllegalArgumentException("Empty key: {} in '" + this.pattern + "'");
    }
    localObject = ((StringBuilder)localObject).toString();
    this.keys.add(localObject);
    return new KeyToken(paramToken, (String)localObject);
  }
  
  private LeftCurlyBracketToken leftCurlyBracket(Token paramToken)
  {
    consume();
    consume();
    return new LeftCurlyBracketToken(paramToken);
  }
  
  private char lookahead()
  {
    if (this.curCharIndex < this.pattern.length() - 1) {
      return this.pattern.charAt(this.curCharIndex + 1);
    }
    return '\000';
  }
  
  private TextToken text(Token paramToken)
  {
    int i = this.curCharIndex;
    while ((this.curChar != '{') && (this.curChar != 0)) {
      consume();
    }
    return new TextToken(paramToken, this.curCharIndex - i);
  }
  
  private Token token(Token paramToken)
  {
    if (this.curChar == 0) {
      return null;
    }
    if (this.curChar == '{')
    {
      char c = lookahead();
      if (c == '{') {
        return leftCurlyBracket(paramToken);
      }
      if ((c >= 'a') && (c <= 'z')) {
        return key(paramToken);
      }
      throw new IllegalArgumentException("Unexpected character '" + c + "'; expected key in '" + this.pattern + "'");
    }
    return text(paramToken);
  }
  
  public final CharSequence format()
  {
    if (this.formatted == null)
    {
      if (!this.keysToValues.keySet().containsAll(this.keys))
      {
        localObject = new HashSet(this.keys);
        ((Set)localObject).removeAll(this.keysToValues.keySet());
        throw new IllegalArgumentException("Missing keys: " + localObject + " in '" + this.pattern + "'");
      }
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.pattern);
      for (Object localObject = this.head; localObject != null; localObject = ((Token)localObject).next) {
        ((Token)localObject).expand(localSpannableStringBuilder, this.keysToValues);
      }
      this.formatted = localSpannableStringBuilder;
    }
    return this.formatted;
  }
  
  public final void into(TextView paramTextView)
  {
    if (paramTextView == null) {
      throw new IllegalArgumentException("TextView must not be null.");
    }
    paramTextView.setText(format());
  }
  
  public final Phrase put(String paramString, int paramInt)
  {
    return put(paramString, Integer.toString(paramInt));
  }
  
  public final Phrase put(String paramString, CharSequence paramCharSequence)
  {
    if (!this.keys.contains(paramString)) {
      throw new IllegalArgumentException("Key '" + paramString + "' not found in '" + this.pattern + "'");
    }
    if (paramCharSequence == null) {
      throw new IllegalArgumentException("Null value for '" + paramString + "' in '" + this.pattern + "'");
    }
    this.keysToValues.put(paramString, paramCharSequence);
    this.formatted = null;
    return this;
  }
  
  public final Phrase putOptional(String paramString, int paramInt)
  {
    Phrase localPhrase = this;
    if (this.keys.contains(paramString)) {
      localPhrase = put(paramString, paramInt);
    }
    return localPhrase;
  }
  
  public final Phrase putOptional(String paramString, CharSequence paramCharSequence)
  {
    Phrase localPhrase = this;
    if (this.keys.contains(paramString)) {
      localPhrase = put(paramString, paramCharSequence);
    }
    return localPhrase;
  }
  
  public final String toString()
  {
    return this.pattern.toString();
  }
  
  private static class KeyToken
    extends Phrase.Token
  {
    private final String key;
    private CharSequence value;
    
    KeyToken(Phrase.Token paramToken, String paramString)
    {
      super();
      this.key = paramString;
    }
    
    void expand(SpannableStringBuilder paramSpannableStringBuilder, Map<String, CharSequence> paramMap)
    {
      this.value = ((CharSequence)paramMap.get(this.key));
      int i = getFormattedStart();
      paramSpannableStringBuilder.replace(i, this.key.length() + i + 2, this.value);
    }
    
    int getFormattedLength()
    {
      return this.value.length();
    }
  }
  
  private static class LeftCurlyBracketToken
    extends Phrase.Token
  {
    LeftCurlyBracketToken(Phrase.Token paramToken)
    {
      super();
    }
    
    void expand(SpannableStringBuilder paramSpannableStringBuilder, Map<String, CharSequence> paramMap)
    {
      int i = getFormattedStart();
      paramSpannableStringBuilder.replace(i, i + 2, "{");
    }
    
    int getFormattedLength()
    {
      return 1;
    }
  }
  
  private static class TextToken
    extends Phrase.Token
  {
    private final int textLength;
    
    TextToken(Phrase.Token paramToken, int paramInt)
    {
      super();
      this.textLength = paramInt;
    }
    
    void expand(SpannableStringBuilder paramSpannableStringBuilder, Map<String, CharSequence> paramMap) {}
    
    int getFormattedLength()
    {
      return this.textLength;
    }
  }
  
  private static abstract class Token
  {
    Token next;
    private final Token prev;
    
    protected Token(Token paramToken)
    {
      this.prev = paramToken;
      if (paramToken != null) {
        paramToken.next = this;
      }
    }
    
    abstract void expand(SpannableStringBuilder paramSpannableStringBuilder, Map<String, CharSequence> paramMap);
    
    abstract int getFormattedLength();
    
    final int getFormattedStart()
    {
      if (this.prev == null) {
        return 0;
      }
      return this.prev.getFormattedStart() + this.prev.getFormattedLength();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/Phrase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */