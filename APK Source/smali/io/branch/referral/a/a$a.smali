.class public final Lio/branch/referral/a/a$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private cBL:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/16 v0, -0x71

    iput v0, p0, Lio/branch/referral/a/a$a;->cBL:I

    iput p1, p0, Lio/branch/referral/a/a$a;->cBL:I

    return-void
.end method

.method static synthetic a(Lio/branch/referral/a/a$a;)I
    .locals 1

    iget v0, p0, Lio/branch/referral/a/a$a;->cBL:I

    return v0
.end method
