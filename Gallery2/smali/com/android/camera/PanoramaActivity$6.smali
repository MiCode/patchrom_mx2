.class Lcom/android/camera/PanoramaActivity$6;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->setViews(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$6;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$6;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$700(Lcom/android/camera/PanoramaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$6;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->showDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/android/camera/PanoramaActivity;->access$2200(Lcom/android/camera/PanoramaActivity;I)V

    .line 666
    :cond_0
    return-void
.end method
