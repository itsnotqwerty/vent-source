.class Landroid/support/v4/app/b$a;
.super Landroid/support/v4/app/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field protected final wi:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/b;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/b$a;->wi:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/b$a;->wi:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
