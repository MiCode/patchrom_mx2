.class Lcom/android/camera/ModePicker$1;
.super Ljava/lang/Object;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ModePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ModePicker;


# direct methods
.method constructor <init>(Lcom/android/camera/ModePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/camera/ModePicker$1;->this$0:Lcom/android/camera/ModePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ModePicker$1;->this$0:Lcom/android/camera/ModePicker;

    #getter for: Lcom/android/camera/ModePicker;->mModeChanged:Z
    invoke-static {v0}, Lcom/android/camera/ModePicker;->access$000(Lcom/android/camera/ModePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ModePicker$1;->this$0:Lcom/android/camera/ModePicker;

    #getter for: Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ModePicker;->access$100(Lcom/android/camera/ModePicker;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ModePicker$1;->this$0:Lcom/android/camera/ModePicker;

    #calls: Lcom/android/camera/ModePicker;->changeToSelectedMode()V
    invoke-static {v0}, Lcom/android/camera/ModePicker;->access$200(Lcom/android/camera/ModePicker;)V

    .line 134
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 138
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 142
    return-void
.end method
