.class public final Lcom/firebase/jobdispatcher/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/x$a;
    }
.end annotation


# static fields
.field public static final ayb:Lcom/firebase/jobdispatcher/x;

.field public static final ayc:Lcom/firebase/jobdispatcher/x;


# instance fields
.field final ayd:I

.field final aye:I

.field final ayf:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe10

    const/16 v2, 0x1e

    new-instance v0, Lcom/firebase/jobdispatcher/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/jobdispatcher/x;-><init>(III)V

    sput-object v0, Lcom/firebase/jobdispatcher/x;->ayb:Lcom/firebase/jobdispatcher/x;

    new-instance v0, Lcom/firebase/jobdispatcher/x;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/jobdispatcher/x;-><init>(III)V

    sput-object v0, Lcom/firebase/jobdispatcher/x;->ayc:Lcom/firebase/jobdispatcher/x;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/firebase/jobdispatcher/x;->ayd:I

    iput p2, p0, Lcom/firebase/jobdispatcher/x;->aye:I

    iput p3, p0, Lcom/firebase/jobdispatcher/x;->ayf:I

    return-void
.end method
