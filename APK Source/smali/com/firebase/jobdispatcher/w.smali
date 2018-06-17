.class public final Lcom/firebase/jobdispatcher/w;
.super Ljava/lang/Object;


# instance fields
.field final flags:I

.field final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/firebase/jobdispatcher/w;->uri:Landroid/net/Uri;

    iput p2, p0, Lcom/firebase/jobdispatcher/w;->flags:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/firebase/jobdispatcher/w;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/firebase/jobdispatcher/w;

    iget v2, p0, Lcom/firebase/jobdispatcher/w;->flags:I

    iget v3, p1, Lcom/firebase/jobdispatcher/w;->flags:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/firebase/jobdispatcher/w;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/firebase/jobdispatcher/w;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/w;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/firebase/jobdispatcher/w;->flags:I

    xor-int/2addr v0, v1

    return v0
.end method
