.class public final Landroid/support/v4/app/aa$e;
.super Landroid/support/v4/app/aa$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private Af:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/aa$f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aa$e;->Af:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/z;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-interface {p1}, Landroid/support/v4/app/z;->cY()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Landroid/support/v4/app/aa$e;->Ah:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v1

    iget-boolean v0, p0, Landroid/support/v4/app/aa$e;->Aj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aa$e;->Ai:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aa$e;->Af:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$e;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/aa$c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/aa$e;->Ah:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final i(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$e;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/aa$e;->Af:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/app/aa$c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
