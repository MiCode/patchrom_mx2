.class Lcom/android/camera/PanoramaActivity$7$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PanoramaActivity$7;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity$7;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$7$1;->this$1:Lcom/android/camera/PanoramaActivity$7;

    iput p2, p0, Lcom/android/camera/PanoramaActivity$7$1;->val$progress:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$7$1;->this$1:Lcom/android/camera/PanoramaActivity$7;

    iget-object v0, v0, Lcom/android/camera/PanoramaActivity$7;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$2600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/PanoProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PanoramaActivity$7$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 780
    return-void
.end method
