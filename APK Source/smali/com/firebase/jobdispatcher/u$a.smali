.class public final Lcom/firebase/jobdispatcher/u$a;
.super Lcom/firebase/jobdispatcher/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final axY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/jobdispatcher/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/jobdispatcher/w;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/u;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/u$a;->axY:Ljava/util/List;

    return-void
.end method
