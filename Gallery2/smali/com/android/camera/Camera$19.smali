.class Lcom/android/camera/Camera$19;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4732
    iput-object p1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4735
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/Camera;->mIsCanTouchFocus:Z
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$12702(Lcom/android/camera/Camera;Z)Z

    .line 4736
    return-void
.end method
