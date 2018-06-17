.class public final Lio/branch/referral/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final cBM:Ljava/lang/String;

.field final responseCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/referral/a/a$b;->cBM:Ljava/lang/String;

    iput p2, p0, Lio/branch/referral/a/a$b;->responseCode:I

    return-void
.end method
