.class abstract Lcom/c/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final bMF:Lcom/c/a/t;

.field final bMG:Lcom/c/a/w;

.field final bMH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field final bMI:Z

.field final bMJ:I

.field final bMK:I

.field final bML:I

.field final bMM:Landroid/graphics/drawable/Drawable;

.field bMN:Z

.field bMO:Z

.field final key:Ljava/lang/String;

.field final tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/c/a/t;Ljava/lang/Object;Lcom/c/a/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/t;",
            "TT;",
            "Lcom/c/a/w;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    iput-object p3, p0, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/c/a/a;->bMH:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/c/a/a;->bMJ:I

    iput p5, p0, Lcom/c/a/a;->bMK:I

    iput-boolean p10, p0, Lcom/c/a/a;->bMI:Z

    iput p6, p0, Lcom/c/a/a;->bML:I

    iput-object p7, p0, Lcom/c/a/a;->bMM:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/c/a/a;->key:Ljava/lang/String;

    if-eqz p9, :cond_1

    :goto_1
    iput-object p9, p0, Lcom/c/a/a;->tag:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Lcom/c/a/a$a;

    iget-object v1, p1, Lcom/c/a/t;->bOg:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1}, Lcom/c/a/a$a;-><init>(Lcom/c/a/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_0

    :cond_1
    move-object p9, p0

    goto :goto_1
.end method


# virtual methods
.method abstract a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V
.end method

.method cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a;->bMO:Z

    return-void
.end method

.method abstract error()V
.end method

.method final getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/a;->bMH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/a;->bMH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
