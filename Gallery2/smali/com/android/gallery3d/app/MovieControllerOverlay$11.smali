.class Lcom/android/gallery3d/app/MovieControllerOverlay$11;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6600(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    mul-int/lit16 v1, v1, 0x2710

    div-int/lit16 v1, v1, 0xfd

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1007
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBar:Lcom/android/gallery3d/seekbar/VerSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSysBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6600(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->setWinBrightness(I)V

    .line 1011
    :cond_0
    return-void
.end method
