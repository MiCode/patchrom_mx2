.class Lcom/android/camera/VideoCamera$2;
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
    .line 352
    iput-object p1, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/VideoCamera$2;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 356
    return-void
.end method
