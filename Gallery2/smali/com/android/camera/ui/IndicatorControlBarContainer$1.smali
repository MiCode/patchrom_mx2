.class Lcom/android/camera/ui/IndicatorControlBarContainer$1;
.super Ljava/lang/Object;
.source "IndicatorControlBarContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/IndicatorControlBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/IndicatorControlBarContainer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/IndicatorControlBarContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer$1;->this$0:Lcom/android/camera/ui/IndicatorControlBarContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer$1;->this$0:Lcom/android/camera/ui/IndicatorControlBarContainer;

    #getter for: Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->access$000(Lcom/android/camera/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer$1;->this$0:Lcom/android/camera/ui/IndicatorControlBarContainer;

    #getter for: Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;
    invoke-static {v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->access$100(Lcom/android/camera/ui/IndicatorControlBarContainer;)Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setVisibility(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer$1;->this$0:Lcom/android/camera/ui/IndicatorControlBarContainer;

    #getter for: Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->access$200(Lcom/android/camera/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer$1;->this$0:Lcom/android/camera/ui/IndicatorControlBarContainer;

    #getter for: Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;
    invoke-static {v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->access$300(Lcom/android/camera/ui/IndicatorControlBarContainer;)Lcom/android/camera/ui/IndicatorControlBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 108
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 112
    return-void
.end method
