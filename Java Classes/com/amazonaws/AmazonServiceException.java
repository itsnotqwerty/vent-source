package com.amazonaws;

public class AmazonServiceException
  extends AmazonClientException
{
  public String alJ;
  public String alK;
  public ErrorType alL = ErrorType.alQ;
  private String alM;
  public String alN;
  public int statusCode;
  
  public AmazonServiceException(String paramString)
  {
    super(paramString);
    this.alM = paramString;
  }
  
  public String getMessage()
  {
    return this.alM + " (Service: " + this.alN + "; Status Code: " + this.statusCode + "; Error Code: " + this.alK + "; Request ID: " + this.alJ + ")";
  }
  
  public static enum ErrorType
  {
    private ErrorType() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/AmazonServiceException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */