.class final Landroid/support/v4/app/o$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/o$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final mFlags:I

.field final mName:Ljava/lang/String;

.field final synthetic yb:Landroid/support/v4/app/o;

.field final yo:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/o$h;->yb:Landroid/support/v4/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/o$h;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/support/v4/app/o$h;->yo:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/o$h;->mFlags:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/o$h;->yb:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->xI:Landroid/support/v4/app/i;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/o$h;->yo:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o$h;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o$h;->yb:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->xI:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->peekChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o$h;->yb:Landroid/support/v4/app/o;

    iget-object v3, p0, Landroid/support/v4/app/o$h;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/o$h;->yo:I

    iget v5, p0, Landroid/support/v4/app/o$h;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method
