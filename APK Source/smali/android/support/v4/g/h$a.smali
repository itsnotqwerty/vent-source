.class final Landroid/support/v4/g/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final EK:I

.field EL:Z

.field final synthetic EM:Landroid/support/v4/g/h;

.field ai:I

.field mIndex:I


# direct methods
.method constructor <init>(Landroid/support/v4/g/h;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/g/h$a;->EM:Landroid/support/v4/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/g/h$a;->EL:Z

    iput p2, p0, Landroid/support/v4/g/h$a;->EK:I

    invoke-virtual {p1}, Landroid/support/v4/g/h;->dD()I

    move-result v0

    iput v0, p0, Landroid/support/v4/g/h$a;->ai:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/g/h$a;->mIndex:I

    iget v1, p0, Landroid/support/v4/g/h$a;->ai:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/g/h$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/g/h$a;->EM:Landroid/support/v4/g/h;

    iget v1, p0, Landroid/support/v4/g/h$a;->mIndex:I

    iget v2, p0, Landroid/support/v4/g/h$a;->EK:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/g/h;->o(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/g/h$a;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/g/h$a;->mIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/g/h$a;->EL:Z

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/g/h$a;->EL:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v4/g/h$a;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/g/h$a;->mIndex:I

    iget v0, p0, Landroid/support/v4/g/h$a;->ai:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/g/h$a;->ai:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/g/h$a;->EL:Z

    iget-object v0, p0, Landroid/support/v4/g/h$a;->EM:Landroid/support/v4/g/h;

    iget v1, p0, Landroid/support/v4/g/h$a;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/g/h;->an(I)V

    return-void
.end method
