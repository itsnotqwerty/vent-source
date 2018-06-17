.class final Landroid/support/v4/e/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/e/b;->a(Landroid/content/Context;Landroid/support/v4/e/a;Landroid/support/v4/content/a/b$a;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/e/c$a",
        "<",
        "Landroid/support/v4/e/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DA:Landroid/os/Handler;

.field final synthetic Dz:Landroid/support/v4/content/a/b$a;


# direct methods
.method constructor <init>(Landroid/support/v4/content/a/b$a;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/e/b$2;->Dz:Landroid/support/v4/content/a/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/e/b$2;->DA:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic B(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/support/v4/e/b$c;

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/e/b$2;->Dz:Landroid/support/v4/content/a/b$a;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v4/e/b$2;->DA:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/a/b$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/support/v4/e/b$c;->DF:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/e/b$2;->Dz:Landroid/support/v4/content/a/b$a;

    iget-object v1, p1, Landroid/support/v4/e/b$c;->pt:Landroid/graphics/Typeface;

    iget-object v2, p0, Landroid/support/v4/e/b$2;->DA:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/a/b$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/e/b$2;->Dz:Landroid/support/v4/content/a/b$a;

    iget v1, p1, Landroid/support/v4/e/b$c;->DF:I

    iget-object v2, p0, Landroid/support/v4/e/b$2;->DA:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/a/b$a;->a(ILandroid/os/Handler;)V

    goto :goto_0
.end method
