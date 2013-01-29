.class public Lcom/android/camera/ShutterButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->drawableStateChanged()V

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 63
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 64
    if-nez v0, :cond_1

    .line 86
    new-instance v1, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 95
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ShutterButton;->mOldPressed:Z

    .line 97
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 108
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 111
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 52
    return-void
.end method
