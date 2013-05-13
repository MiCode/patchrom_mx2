.class Lcom/android/camera/Camera$19;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->showExposureControlBar()V
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
    .line 4689
    iput-object p1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4692
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mExposureTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$13100(Lcom/android/camera/Camera;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4693
    return-void
.end method
