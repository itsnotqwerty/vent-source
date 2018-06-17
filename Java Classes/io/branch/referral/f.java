package io.branch.referral;

public final class f
{
  public String cwL = "";
  int cwM = -113;
  
  public f(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString);
    if (paramInt == -113)
    {
      this.cwM = -113;
      paramString = " Branch API Error: poor network connectivity. Please try again later.";
    }
    for (;;)
    {
      this.cwL = paramString;
      return;
      if (paramInt == -114)
      {
        this.cwM = -114;
        paramString = " Branch API Error: Please enter your branch_key in your project's manifest file first.";
      }
      else if (paramInt == -104)
      {
        this.cwM = -104;
        paramString = " Did you forget to call init? Make sure you init the session before making Branch calls.";
      }
      else if (paramInt == -101)
      {
        this.cwM = -101;
        paramString = " Unable to initialize Branch. Check network connectivity or that your branch key is valid.";
      }
      else if (paramInt == -102)
      {
        this.cwM = -102;
        paramString = " Please add 'android.permission.INTERNET' in your applications manifest file.";
      }
      else if (paramInt == -105)
      {
        this.cwM = -105;
        paramString = " Unable to create a URL with that alias. If you want to reuse the alias, make sure to submit the same properties for all arguments and that the user is the same owner.";
      }
      else if (paramInt == -106)
      {
        this.cwM = -106;
        paramString = " That Branch referral code is already in use.";
      }
      else if (paramInt == -107)
      {
        this.cwM = -107;
        paramString = " Unable to redeem rewards. Please make sure you have credits available to redeem.";
      }
      else if (paramInt == -108)
      {
        this.cwM = -108;
        paramString = "BranchApp class can be used only with API level 14 or above. Please make sure your minimum API level supported is 14. If you wish to use API level below 14 consider calling getInstance(Context) instead.";
      }
      else if (paramInt == -109)
      {
        this.cwM = -109;
        paramString = "Branch instance is not created. Make  sure your Application class is an instance of BranchLikedApp.";
      }
      else if (paramInt == -110)
      {
        this.cwM = -110;
        paramString = " Unable create share options. Couldn't find applications on device to share the link.";
      }
      else if (paramInt == -111)
      {
        this.cwM = -111;
        paramString = " Request to Branch server timed out. Please check your internet connectivity";
      }
      else if ((paramInt >= 500) || (paramInt == -112))
      {
        this.cwM = -112;
        paramString = " Unable to reach the Branch servers, please try again shortly.";
      }
      else if ((paramInt == 409) || (paramInt == -115))
      {
        this.cwM = -115;
        paramString = " A resource with this identifier already exists.";
      }
      else if ((paramInt >= 400) || (paramInt == -116))
      {
        this.cwM = -116;
        paramString = " The request was invalid.";
      }
      else
      {
        this.cwM = -113;
        paramString = " Check network connectivity and that you properly initialized.";
      }
    }
  }
  
  public final String toString()
  {
    return this.cwL;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */