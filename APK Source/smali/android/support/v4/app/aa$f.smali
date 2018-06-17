.class public abstract Landroid/support/v4/app/aa$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field protected Ag:Landroid/support/v4/app/aa$c;

.field Ah:Ljava/lang/CharSequence;

.field Ai:Ljava/lang/CharSequence;

.field Aj:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aa$f;->Aj:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/z;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/support/v4/app/aa$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa$f;->Ag:Landroid/support/v4/app/aa$c;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/aa$f;->Ag:Landroid/support/v4/app/aa$c;

    iget-object v0, p0, Landroid/support/v4/app/aa$f;->Ag:Landroid/support/v4/app/aa$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aa$f;->Ag:Landroid/support/v4/app/aa$c;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/aa$c;->a(Landroid/support/v4/app/aa$f;)Landroid/support/v4/app/aa$c;

    :cond_0
    return-void
.end method
