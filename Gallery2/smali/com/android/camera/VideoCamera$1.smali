.class Lcom/android/camera/VideoCamera$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/VideoCamera;->mIsCanNextFocus:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$302(Lcom/android/camera/VideoCamera;Z)Z

    .line 349
    return-void
.end method
