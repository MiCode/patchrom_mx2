.class Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHandlerHolder"
.end annotation


# static fields
.field public static final sHandler:Landroid/os/Handler;

.field private static final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ClearThumbnail"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    .line 32
    sget-object v0, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder$1;

    invoke-direct {v2}, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
