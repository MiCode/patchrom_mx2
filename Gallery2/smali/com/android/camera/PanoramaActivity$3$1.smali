.class Lcom/android/camera/PanoramaActivity$3$1;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PanoramaActivity$3;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$3$1;->this$1:Lcom/android/camera/PanoramaActivity$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$3$1;->this$1:Lcom/android/camera/PanoramaActivity$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaActivity$3;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$1100(Lcom/android/camera/PanoramaActivity;)V

    .line 334
    return-void
.end method
