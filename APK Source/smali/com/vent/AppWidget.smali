.class public final Lcom/vent/AppWidget;
.super Landroid/appwidget/AppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 11

    const/4 v1, 0x0

    const v10, 0x7f0900a5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v2, p2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v4, Lcom/vent/bb;->ciF:I

    sget v6, Lcom/vent/bb;->ciG:I

    add-int/2addr v4, v6

    if-lez v4, :cond_2

    invoke-virtual {v5, v10, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vent/ActMain;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x24000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v6, Lcom/vent/ActMain;

    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    const-string v7, "id"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v7, Lcom/vent/bb;->ciF:I

    if-lez v7, :cond_3

    const-string v7, "cmd"

    const-string v8, "notification"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_2
    const v7, 0x7f0901aa

    const/high16 v8, 0x8000000

    invoke-static {p0, v6, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p1, v3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v5, v10, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_3
    sget v7, Lcom/vent/bb;->ciG:I

    if-lez v7, :cond_0

    const-string v7, "cmd"

    const-string v8, "chats"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-static {p1, p2, p3}, Lcom/vent/AppWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
