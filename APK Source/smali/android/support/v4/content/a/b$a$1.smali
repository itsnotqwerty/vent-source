.class final Landroid/support/v4/content/a/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/a/b$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BA:Landroid/graphics/Typeface;

.field final synthetic BB:Landroid/support/v4/content/a/b$a;


# direct methods
.method constructor <init>(Landroid/support/v4/content/a/b$a;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/content/a/b$a$1;->BB:Landroid/support/v4/content/a/b$a;

    iput-object p2, p0, Landroid/support/v4/content/a/b$a$1;->BA:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/content/a/b$a$1;->BB:Landroid/support/v4/content/a/b$a;

    iget-object v1, p0, Landroid/support/v4/content/a/b$a$1;->BA:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/a/b$a;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
