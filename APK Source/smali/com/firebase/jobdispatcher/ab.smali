.class public final Lcom/firebase/jobdispatcher/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/firebase/jobdispatcher/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/ab$a;
    }
.end annotation


# instance fields
.field private final axq:Lcom/firebase/jobdispatcher/v;


# direct methods
.method public constructor <init>(Lcom/firebase/jobdispatcher/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/ab;->axq:Lcom/firebase/jobdispatcher/v;

    return-void
.end method


# virtual methods
.method public final a(Lcom/firebase/jobdispatcher/r;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/jobdispatcher/r;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/firebase/jobdispatcher/ab;->axq:Lcom/firebase/jobdispatcher/v;

    invoke-interface {v0, p1}, Lcom/firebase/jobdispatcher/v;->a(Lcom/firebase/jobdispatcher/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
