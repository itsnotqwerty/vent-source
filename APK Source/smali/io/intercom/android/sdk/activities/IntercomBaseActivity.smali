.class public abstract Lio/intercom/android/sdk/activities/IntercomBaseActivity;
.super Landroid/support/v7/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Lio/intercom/android/sdk/utilities/ContextLocaliser;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/utilities/ContextLocaliser;-><init>(Lio/intercom/android/sdk/Provider;)V

    invoke-virtual {v0, p0, p1}, Lio/intercom/android/sdk/utilities/ContextLocaliser;->applyOverrideConfiguration(Landroid/view/ContextThemeWrapper;Landroid/content/Context;)V

    return-void
.end method
