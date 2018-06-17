.class final Lcom/vent/ActEmotions$b;
.super Landroid/support/v4/app/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActEmotions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final bUM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/ActEmotions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;Lcom/vent/ActEmotions;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/n;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ActEmotions$b;->bUM:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ac(I)Landroid/support/v4/app/i;
    .locals 1

    invoke-static {p1}, Lcom/vent/ActEmotions$c;->eh(I)Landroid/support/v4/app/i;

    move-result-object v0

    return-object v0
.end method

.method public final aw(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActEmotions$b;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions;

    iget-object v0, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/vent/ActEmotions$b;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions;

    iget-object v0, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
