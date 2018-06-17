.class public interface abstract Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/imageloader/LongTermImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageReadyListener"
.end annotation


# static fields
.field public static final NULL:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;->NULL:Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;

    return-void
.end method


# virtual methods
.method public abstract onImageReady(Landroid/graphics/Bitmap;)V
.end method
