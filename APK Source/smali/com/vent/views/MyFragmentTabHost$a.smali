.class final Lcom/vent/views/MyFragmentTabHost$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/views/MyFragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/views/MyFragmentTabHost$a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost$a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    return-object v0
.end method
