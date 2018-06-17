.class final Lcom/layer/atlas/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field protected final bnT:Z

.field protected final bnU:Lcom/layer/atlas/b/a;


# direct methods
.method public constructor <init>(ZLcom/layer/atlas/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/layer/atlas/a/a$b;->bnT:Z

    iput-object p2, p0, Lcom/layer/atlas/a/a$b;->bnU:Lcom/layer/atlas/b/a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/layer/atlas/a/a$b;

    iget-boolean v1, p0, Lcom/layer/atlas/a/a$b;->bnT:Z

    iget-boolean v2, p1, Lcom/layer/atlas/a/a$b;->bnT:Z

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/a/a$b;->bnU:Lcom/layer/atlas/b/a;

    iget-object v1, p1, Lcom/layer/atlas/a/a$b;->bnU:Lcom/layer/atlas/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/layer/atlas/a/a$b;->bnT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/layer/atlas/a/a$b;->bnU:Lcom/layer/atlas/b/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
