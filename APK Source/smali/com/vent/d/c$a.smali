.class final Lcom/vent/d/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field cdO:Lcom/vent/ae$c;

.field cdT:Lcom/vent/CachedImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/d/c$a;-><init>()V

    return-void
.end method

.method private Dr()V
    .locals 1

    iget-object v0, p0, Lcom/vent/d/c$a;->cdO:Lcom/vent/ae$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/d/c$a;->cdO:Lcom/vent/ae$c;

    invoke-virtual {v0, p0}, Lcom/vent/ae$c;->b(Lcom/vent/ae$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/d/c$a;->cdO:Lcom/vent/ae$c;

    :cond_0
    return-void
.end method


# virtual methods
.method public final Di()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/d/c$a;->cdT:Lcom/vent/CachedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/d/c$a;->cdT:Lcom/vent/CachedImageView;

    iget-object v1, p0, Lcom/vent/d/c$a;->cdO:Lcom/vent/ae$c;

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setCachedImage(Lcom/vent/ae$c;)V

    iget-object v0, p0, Lcom/vent/d/c$a;->cdT:Lcom/vent/CachedImageView;

    iput-object v2, v0, Lcom/vent/CachedImageView;->cdR:Ljava/lang/Object;

    iput-object v2, p0, Lcom/vent/d/c$a;->cdT:Lcom/vent/CachedImageView;

    :cond_0
    invoke-direct {p0}, Lcom/vent/d/c$a;->Dr()V

    return-void
.end method

.method public final e(Lcom/vent/ae$c;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/d/c$a;->cdO:Lcom/vent/ae$c;

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/vent/d/c$a;->Dr()V

    :cond_0
    iput-object p1, p0, Lcom/vent/d/c$a;->cdO:Lcom/vent/ae$c;

    return-void
.end method
