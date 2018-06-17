.class public final Lio/branch/referral/f;
.super Ljava/lang/Object;


# instance fields
.field public cwL:Ljava/lang/String;

.field cwM:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const/16 v6, -0x70

    const/16 v5, -0x72

    const/16 v4, -0x73

    const/16 v3, -0x74

    const/16 v2, -0x71

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/branch/referral/f;->cwL:Ljava/lang/String;

    iput v2, p0, Lio/branch/referral/f;->cwM:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p2, v2, :cond_0

    iput v2, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Branch API Error: poor network connectivity. Please try again later."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/f;->cwL:Ljava/lang/String;

    return-void

    :cond_0
    if-ne p2, v5, :cond_1

    iput v5, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Branch API Error: Please enter your branch_key in your project\'s manifest file first."

    goto :goto_0

    :cond_1
    const/16 v0, -0x68

    if-ne p2, v0, :cond_2

    const/16 v0, -0x68

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Did you forget to call init? Make sure you init the session before making Branch calls."

    goto :goto_0

    :cond_2
    const/16 v0, -0x65

    if-ne p2, v0, :cond_3

    const/16 v0, -0x65

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Unable to initialize Branch. Check network connectivity or that your branch key is valid."

    goto :goto_0

    :cond_3
    const/16 v0, -0x66

    if-ne p2, v0, :cond_4

    const/16 v0, -0x66

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Please add \'android.permission.INTERNET\' in your applications manifest file."

    goto :goto_0

    :cond_4
    const/16 v0, -0x69

    if-ne p2, v0, :cond_5

    const/16 v0, -0x69

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Unable to create a URL with that alias. If you want to reuse the alias, make sure to submit the same properties for all arguments and that the user is the same owner."

    goto :goto_0

    :cond_5
    const/16 v0, -0x6a

    if-ne p2, v0, :cond_6

    const/16 v0, -0x6a

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " That Branch referral code is already in use."

    goto :goto_0

    :cond_6
    const/16 v0, -0x6b

    if-ne p2, v0, :cond_7

    const/16 v0, -0x6b

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Unable to redeem rewards. Please make sure you have credits available to redeem."

    goto :goto_0

    :cond_7
    const/16 v0, -0x6c

    if-ne p2, v0, :cond_8

    const/16 v0, -0x6c

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, "BranchApp class can be used only with API level 14 or above. Please make sure your minimum API level supported is 14. If you wish to use API level below 14 consider calling getInstance(Context) instead."

    goto :goto_0

    :cond_8
    const/16 v0, -0x6d

    if-ne p2, v0, :cond_9

    const/16 v0, -0x6d

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, "Branch instance is not created. Make  sure your Application class is an instance of BranchLikedApp."

    goto :goto_0

    :cond_9
    const/16 v0, -0x6e

    if-ne p2, v0, :cond_a

    const/16 v0, -0x6e

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Unable create share options. Couldn\'t find applications on device to share the link."

    goto :goto_0

    :cond_a
    const/16 v0, -0x6f

    if-ne p2, v0, :cond_b

    const/16 v0, -0x6f

    iput v0, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Request to Branch server timed out. Please check your internet connectivity"

    goto :goto_0

    :cond_b
    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_c

    if-ne p2, v6, :cond_d

    :cond_c
    iput v6, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Unable to reach the Branch servers, please try again shortly."

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x199

    if-eq p2, v0, :cond_e

    if-ne p2, v4, :cond_f

    :cond_e
    iput v4, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " A resource with this identifier already exists."

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x190

    if-ge p2, v0, :cond_10

    if-ne p2, v3, :cond_11

    :cond_10
    iput v3, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " The request was invalid."

    goto/16 :goto_0

    :cond_11
    iput v2, p0, Lio/branch/referral/f;->cwM:I

    const-string v0, " Check network connectivity and that you properly initialized."

    goto/16 :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/f;->cwL:Ljava/lang/String;

    return-object v0
.end method
