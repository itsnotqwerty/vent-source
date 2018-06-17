.class public final Lcom/firebase/jobdispatcher/e;
.super Ljava/lang/Object;


# instance fields
.field public final axm:Lcom/firebase/jobdispatcher/c;

.field private final axn:Lcom/firebase/jobdispatcher/ab;

.field private final axo:Lcom/firebase/jobdispatcher/x$a;


# direct methods
.method public constructor <init>(Lcom/firebase/jobdispatcher/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/e;->axm:Lcom/firebase/jobdispatcher/c;

    new-instance v0, Lcom/firebase/jobdispatcher/ab;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/c;->kD()Lcom/firebase/jobdispatcher/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/ab;-><init>(Lcom/firebase/jobdispatcher/v;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/e;->axn:Lcom/firebase/jobdispatcher/ab;

    new-instance v0, Lcom/firebase/jobdispatcher/x$a;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/e;->axn:Lcom/firebase/jobdispatcher/ab;

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/x$a;-><init>(Lcom/firebase/jobdispatcher/ab;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/e;->axo:Lcom/firebase/jobdispatcher/x$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/firebase/jobdispatcher/n;)I
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/e;->axm:Lcom/firebase/jobdispatcher/c;

    invoke-interface {v0, p1}, Lcom/firebase/jobdispatcher/c;->a(Lcom/firebase/jobdispatcher/n;)I

    move-result v0

    return v0
.end method

.method public final kE()Lcom/firebase/jobdispatcher/n$a;
    .locals 2

    new-instance v0, Lcom/firebase/jobdispatcher/n$a;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/e;->axn:Lcom/firebase/jobdispatcher/ab;

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/n$a;-><init>(Lcom/firebase/jobdispatcher/ab;)V

    return-object v0
.end method
